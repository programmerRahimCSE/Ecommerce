-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 06:50 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multiauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `category`, `coupon`, `product`, `blog`, `order`, `other`, `report`, `role`, `return`, `contact`, `comment`, `setting`, `stock`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Admin', '01961363543', 'mrrahim19710@gmail.com', NULL, '$2y$10$FwUmMdsF6/yeJK1/5F29XOjSWDVe0VVnMl3KCsgHo9fF1VEkq7iTy', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, NULL, '2021-02-17 23:13:29'),
(6, 'jahid', '01862443229', 'jahid@gmail.com', NULL, '$2y$10$dOCs5bZx4SntF9M3k/PGUO5AhwRVWcEYJCY9yrlXSEhsMaGalcHIS', NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, 2, NULL, NULL),
(7, 'monna', '0186244330', 'monna@gmail.com', NULL, '$2y$10$wKPzGwyWFQmRRegPBqffceGNK.pcvIrbZ4pLYOHFgrMkjf/DiJ2A.', NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, '1', NULL, NULL, '1', NULL, 2, NULL, NULL),
(8, 'sobuj', '01630178957', 'sobuj@gmail.com', NULL, '$2y$10$hp/TjsAX9/ZcuJhbmq9DgOKhNoXlGUtuqDPlBDQ0nBEiI7uGXsTrS', NULL, '1', '1', '1', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(6, 'Samsung', 'public/media/brand/280621_09_20_47.jpg', NULL, NULL),
(10, 'Sony', 'public/media/brand/280621_09_33_49.jpg', NULL, NULL),
(11, 'Apple', 'public/media/brand/280621_09_21_54.png', NULL, NULL),
(12, 'Lenovo', 'public/media/brand/280621_09_27_56.jpg', NULL, NULL),
(13, 'Cotan', 'public/media/brand/280621_11_51_43.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Mens Fashion', '2021-02-18 22:48:21', '2021-02-18 22:48:21'),
(2, 'Watch', '2021-02-18 22:50:44', '2021-02-18 22:50:44'),
(3, 'Electronics', NULL, NULL),
(4, 'Female fashion', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'Abdur5', '5', NULL, NULL),
(2, 'Abdur10', '10', NULL, NULL),
(3, 'Abdur15', '15', NULL, NULL),
(5, 'Abdur20', '20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2021_02_18_052623_create_categories_table', 2),
(6, '2021_02_18_052745_create_subcategories_table', 2),
(7, '2021_02_18_052829_create_brands_table', 2),
(8, '2021_02_25_022125_create_coupons_table', 3),
(9, '2021_03_18_050937_create_newslaters_table', 4),
(10, '2021_03_20_052626_create_products_table', 5),
(11, '2021_03_20_131718_create_products_table', 6),
(12, '2021_06_23_020841_create_post_category_table', 7),
(14, '2021_06_23_020937_create_posts_table', 8),
(19, '2021_07_06_133744_create_wishlists_table', 9),
(20, '2021_09_01_091408_create_settings_table', 10),
(21, '2021_10_02_152046_create_orders_table', 11),
(22, '2021_10_02_152238_create_order_details_table', 11),
(23, '2021_10_02_152346_create_shipping_table', 11),
(24, '2022_05_18_113552_create_seo_table', 12),
(25, '2022_05_18_115706_create_seo_table', 13),
(26, '2022_05_19_093529_create_sitesetting_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `newslaters`
--

CREATE TABLE `newslaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newslaters`
--

INSERT INTO `newslaters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'ab@gmail.com', '2021-03-18 12:09:50', NULL),
(3, 'bc@gmail.com', '2021-03-18 12:10:04', NULL),
(5, 'mr@gmail.com', '2022-05-18 11:32:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(244) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `status`, `return_order`, `month`, `date`, `year`, `status_code`, `created_at`, `updated_at`) VALUES
(1, '3', NULL, 'card_1JgZgTK5om6Z0UVhIfAk73pL', '632', 'txn_3JgZgWK5om6Z0UVh18j5F7vQ', '6159fa3a677ba', '625.00', '7', '0', '632', '3', '2', 'October', '03-10-21', '2021', '15641', NULL, NULL),
(2, '3', NULL, 'card_1JgZjiK5om6Z0UVh0IJP6FeR', '47', 'txn_3JgZjjK5om6Z0UVh0SHCRwkE', '6159fb02de78a', '40.00', '7', '0', '47', '4', '0', 'October', '03-10-21', '2021', '2145', NULL, NULL),
(3, '3', 'stripe', 'card_1L0IkIK5om6Z0UVhSrHf0ex6', '477', 'txn_3L0IkJK5om6Z0UVh0amE7VRT', '62832f5572359', '450', '7', '0', '477', '3', '0', 'May', '17-05-22', '2022', '1451', NULL, NULL),
(4, '3', 'stripe', 'card_1L1276K5om6Z0UVhKla0QzSY', '132', 'txn_3L1278K5om6Z0UVh1rICAWoz', '6285d88ebf057', '125.00', '7', '0', '132', '3', '0', 'May', '19-05-22', '2022', '624203', NULL, NULL),
(5, '3', 'stripe', 'card_1L12gYK5om6Z0UVhcCGqQA5h', '17', 'txn_3L12gZK5om6Z0UVh1iRQUCEq', '6285e1243eef1', '10.00', '7', '0', '17', '3', '1', 'May', '19-05-22', '2022', '665294', NULL, NULL),
(6, '3', 'stripe', 'card_1L3KtAK5om6Z0UVhQXG9kphx', '17', 'txn_3L3KtCK5om6Z0UVh0y4H3rvr', '628e386a1b85c', '10.00', '7', '0', '17', '0', '0', 'May', '25-05-22', '2022', '922925', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(1, 1, '10', 'Panjabi', 'blue', 'm', '5', '125', '625', NULL, NULL),
(2, 2, '6', 'Rolex', 'gold', 'sm', '4', '10', '40', NULL, NULL),
(3, 3, '5', 'Casual Shirt', 'Blue', 'XL', '1', '460', '460', NULL, NULL),
(4, 3, '6', 'Rolex', 'gold', 'sm', '1', '10', '10', NULL, NULL),
(5, 4, '10', 'Panjabi', 'blue', 'm', '1', '125', '125', NULL, NULL),
(6, 5, '6', 'Rolex', 'gold', 'sm', '1', '10', '10', NULL, NULL),
(7, 6, '6', 'Rolex', 'gold', 'sm', '1', '10', '10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('sohidulislam@gmail.com', '$2y$10$vAar.RsSxnCCTrMTcLdW9.CRf/wrDq0aUiHjoMyBFn8SiLSf9TpNa', '2021-07-06 01:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_bn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_bn`, `post_image`, `details_en`, `details_bn`, `created_at`, `updated_at`) VALUES
(4, 3, 'Where can I get some?', 'লরেম ইপসামের প্যাসেজের বিভিন্ন প্রকরণ', 'public/media/post/1703647407820419.jpg', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to rejpeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'লরেম ইপসামের প্যাসেজের বিভিন্ন প্রকরণ পাওয়া যায়, তবে বেশিরভাগই কিছুটা আকারে পরিবর্তিত হয়েছিল, ইনজেকশনের রসবোধ বা এলোমেলো শব্দ দিয়ে যা কিছুটা বিশ্বাসযোগ্যও লাগে না। আপনি যদি লরেম ইপসামের একটি প্যাসেজ ব্যবহার করতে যাচ্ছেন তবে আপনার অবশ্যই নিশ্চিত হওয়া দরকার যে পাঠ্যের মাঝে কোনও বিব্রতকর কিছু লুকানো নেই। ইন্টারনেটে সমস্ত লরেম ইপসাম জেনারেটর প্রয়োজনীয় হিসাবে পূর্বনির্ধারিত খণ্ডগুলি পুনরাবৃত্তি করে, এটি এটি ইন্টারনেটে প্রথম সত্য জেনারেটর হিসাবে তৈরি করে। এটি লোরেম ইপসাম তৈরি করতে যুক্তিসঙ্গত বলে মনে করে কয়েকটা মডেল বাক্য কাঠামোর সাথে মিলিত 200 টিরও বেশি লাতিন শব্দের একটি অভিধান ব্যবহার করে। উত্পন্ন লোরেম ইপসাম তাই সর্বদা পুনরাবৃত্তি, ইনজেকশনের রসবোধ বা অ-বৈশিষ্ট্যযুক্ত শব্দ ইত্যাদি থেকে মুক্ত etc.', NULL, NULL),
(6, 2, 'Chromebook keeps important files at your fingertips', 'চরমবুক আপনার নখদর্পণে গুরুত্বপূর্ণ ফাইল রাখে', 'public/media/post/1710622430719609.jpg', 'Pin important files for quick access\r\nWhen you open Tote from your Chromebook’s shelf, you’ll find recent screenshots and downloads – files most people will want access to right away. If you want to keep a specific file handy indefinitely, click to “pin” it to Tote. \r\n\r\nIf you’re working on a project for a few weeks and know you’ll want to add the same logo across several presentations, spreadsheets and emails – just pin it. When you need the logo, drag and drop it from Tote into your document. It’s much faster than searching through your files every time. Plus, you can select and share multiple files from Tote at once.\r\n\r\nPin as many files as you’d like, and once you’re done with them, you can un-pin or remove them from Tote altogether with a right-click.', 'দ্রুত অ্যাক্সেসের জন্য গুরুত্বপূর্ণ ফাইলগুলি পিন করুন\r\nযখন আপনি আপনার Chromebook এর শেলফ থেকে Tote খুলবেন, তখন আপনি সাম্প্রতিক স্ক্রিনশট এবং ডাউনলোডগুলি পাবেন - যে ফাইলগুলি অধিকাংশ মানুষ এখনই অ্যাক্সেস করতে চান। আপনি যদি একটি নির্দিষ্ট ফাইল অনির্দিষ্টকালের জন্য হাতের কাছে রাখতে চান, তাহলে টোটে \"পিন\" করতে ক্লিক করুন।\r\n\r\nআপনি যদি কয়েক সপ্তাহের জন্য একটি প্রকল্পে কাজ করছেন এবং জানেন যে আপনি বিভিন্ন উপস্থাপনা, স্প্রেডশীট এবং ইমেল জুড়ে একই লোগো যোগ করতে চান - শুধু এটি পিন করুন। যখন আপনার লোগো দরকার, টোট থেকে আপনার নথিতে টেনে আনুন। এটি প্রতিবার আপনার ফাইলগুলি অনুসন্ধান করার চেয়ে অনেক দ্রুত। এছাড়াও, আপনি একবারে টোট থেকে একাধিক ফাইল নির্বাচন এবং ভাগ করতে পারেন।\r\n\r\nআপনি যতগুলি ফাইল চান ততগুলি পিন করুন এবং একবার সেগুলি শেষ হয়ে গেলে, আপনি ডান-ক্লিকের সাহায্যে সেগুলি আন-পিন বা টোট থেকে পুরোপুরি সরিয়ে ফেলতে পারেন।', NULL, NULL),
(7, 3, 'Google in Asia Pacific: 10 proud moments from 20 years', 'এশিয়া প্যাসিফিক -এ গুগল: 20 বছরের 10 টি গর্বের মুহূর্ত', 'public/media/post/1710622538874940.png', 'Silicon Valley to Shibuya\r\nThat first nondescript office in Tokyo’s Shibuya neighborhood was a long way — in both scale and decor — from the current Google office down the street. But these humble digs served as our first Asia Pacific headquarters. The Googlers there did pioneering work — including steps to take emoji culture global (🎉). And the office laid the groundwork for today’s Google Japan team, helping the host nation continue its long tradition of forward-thinking in technology. Fast forward to today and we have offices full of Googlers throughout the region, with Singapore as our current Asia Pacific headquarters.', 'সিলিকন ভ্যালি থেকে শিবুয়া\r\nটোকিওর শিবুয়া পাড়ায় সেই প্রথম ননডিস্ক্রিপ্ট অফিসটি রাস্তার নিচে বর্তমান গুগল অফিস থেকে - স্কেল এবং সজ্জা উভয় ক্ষেত্রেই একটি দীর্ঘ পথ ছিল। কিন্তু এই নম্র খনন আমাদের প্রথম এশিয়া প্যাসিফিক সদর দপ্তর হিসেবে কাজ করেছিল। সেখানকার গুগলরা অগ্রণী কাজ করেছে - ইমোজি সংস্কৃতি বিশ্বব্যাপী গ্রহণের পদক্ষেপ সহ (🎉)। এবং অফিসটি আজকের গুগল জাপান টিমের জন্য ভিত্তি স্থাপন করেছে, যা হোস্ট দেশকে প্রযুক্তিতে এগিয়ে যাওয়ার চিন্তার দীর্ঘ traditionতিহ্য অব্যাহত রাখতে সহায়তা করে। আজকে দ্রুত এগিয়ে যান এবং আমাদের গোটা অঞ্চল জুড়ে গুগলারের অফিস রয়েছে, সিঙ্গাপুর আমাদের বর্তমান এশিয়া প্যাসিফিক সদর দপ্তর।', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_name_en`, `category_name_bn`, `created_at`, `updated_at`) VALUES
(1, 'offer', 'অফার ', NULL, NULL),
(2, 'Service', 'সার্ভিস ', NULL, NULL),
(3, 'Event', 'ইভেন্ট\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `buyone_getone` int(11) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `image_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 2, 13, 'Casual Shirt', 'Shart_1234', '19', 'Providing you the best range of Shart with effective & timely delivery.', 'Blue,Black,Lal', 'XL,XXL,L,M', '460', NULL, NULL, 1, NULL, 1, 1, NULL, 1, NULL, 'public/media/product/1703811066306475.jpg', 'public/media/product/1703811067944906.jpg', 'public/media/product/1703811068057800.jpg', 1, NULL, NULL),
(6, 2, 8, 10, 'Rolex', 'Rs_342', '13', 'The 17 Most Expensive Rolex Watches Of All Time', 'gold,black', 'sm,md,l', '18', '10', 'https://www.youtube.com/watch?v=VJpwjvlhdd0&ab_channel=MukutVlogs', NULL, 1, NULL, NULL, 1, 0, 1, 'public/media/product/1703811377882676.jpg', 'public/media/product/1703811378026268.jpeg', 'public/media/product/1703811378063400.jpg', 1, NULL, NULL),
(7, 3, 9, 6, 'Frij', 'F_964', '90', 'Welcome to an experience of freshness. WALTON Direct Cool Refrigerators are equipped with 100% copper condensers and Nano technology to take care of your evolving needs and at the same time, maintain the quality of the food that you preserve. Our simple and contemporary designs will surely complement your lifestyle.', 'lal,nil', '36\',40\',25\'', '50800', '34567', NULL, 1, NULL, 1, 1, NULL, 1, NULL, 'public/media/product/1703811699070084.jpg', 'public/media/product/1703811699112770.jpg', 'public/media/product/1703811699154007.jpg', 1, NULL, NULL),
(8, 4, 11, 13, 'Jamdani', 'S_674', '23', 'Bulbul Ahmed Photography PROFESSIONAL FASHION, WEDDING & PRODUCT PHOTOGRAPHER | GRAPHICS DESIGNER Talk: 01971961962 bulbul252@gmail.com FB: https://www.facebook.com/blueboy252/', 'lal,blue,black', 'l,m,sm', '200', '180', 'https://www.youtube.com/watch?v=AYgnPdsEaCM&ab_channel=SwatiMallick', 1, 1, NULL, NULL, 1, 0, NULL, 'public/media/product/1703812002126536.jpeg', 'public/media/product/1703812002191298.jpeg', 'public/media/product/1703812002258592.jpeg', 1, NULL, NULL),
(10, 1, 7, 13, 'Panjabi', 'p_234', '17', 'Material: digital printed cotton Fabric., 100% Color guaranty, Comfortable, Cheap Price', 'blue,red', 'm,l,sm', '345', '125', 'https://www.youtube.com/watch?v=oRs7GH_36uo&ab_channel=SaifulExpressLtd.', 1, NULL, NULL, 1, NULL, 0, NULL, 'public/media/product/1703981378951498.jpeg', 'public/media/product/1703981378986203.jpeg', 'public/media/product/1703981379016806.jpeg', 1, NULL, NULL),
(11, 3, 10, 11, 'Mobile', 'm_23', '12', 'Unsplash\r\nblack smartphone displaying 11 00 photo – Free Inspiration Image on Unsplash', 'black', 'm', '1234567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'public/media/product/1704735961682494.jpg', 'public/media/product/1704735961709478.jpg', 'public/media/product/1704735961781072.jpg', 1, NULL, NULL),
(12, 3, 2, 6, 'Samsung', '11pro', '23', 'Unsplash\r\nblack smartphone displaying 11 00 photo – Free Inspiration Image on Unsplash', 'lal,nil', 'sm', '28000', '27000', NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1704736237597304.jpeg', 'public/media/product/1704736237700723.jpeg', 'public/media/product/1704736237731392.jpeg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Abdur Stor', 'Abdur Rahim', 'Ecommerce Online Store', 'Abdur Rahim Ecommerce Web Site Online', '1457842', '2125445', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `address`, `logo`, `created_at`, `updated_at`) VALUES
(1, '3', '7', 'Rahim_bd', 'ab@gmail.com', '01862443228', 'MOhammodpur, Dhaka.', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `created_at`, `updated_at`) VALUES
(1, '1', 'Abdur Rahim', '01856441245', 'abdur@gmail.com', 'Chitoshi Bazar, Shalenga', 'Chitoshi Bazar', NULL, NULL),
(2, '2', 'abdur rahim', '012451', 'ab@gmail.com', 'Chitoshi Bazar, Shalenga', 'Chandpur', NULL, NULL),
(3, '3', 'Abdur Rahim', '01862443228', 'rahim@gmail.com', 'Dhaka ,Bangladesh', 'Dhaka', NULL, NULL),
(4, '4', 'Abu hanif', '01630178185', 'hanif@gmail.com', 'Chitoshi Bazar, Shalenga', 'Chitoshi Bazar', NULL, NULL),
(5, '5', 'rajjb', '015487494', 'rajjb@gmail.com', 'Chitoshi Bazar, Shalenga', 'Chandpur', NULL, NULL),
(6, '6', 'sobuj', '0185623118', 'sobuj@gmail.com', 'Chitoshi Bazar, Shalenga', 'Chitoshi Bazar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `youtube`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '01567942370', '01567942371', 'programmer@gmail.com', 'Abdur Stor', 'Katasur Mohammadpur', 'https://www.facebook.com/programmerrahim/', 'https://www.youtube.com/', 'https://www.youtube.com/', 'https://twitter.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(2, 1, 'Shart', NULL, NULL),
(3, 13, 'dal', NULL, NULL),
(4, 1, 'T Shart', NULL, NULL),
(5, 14, 'New1', NULL, NULL),
(6, 1, 'Pent', NULL, NULL),
(7, 1, 'Panjabi', NULL, NULL),
(8, 2, 'Rolex', NULL, NULL),
(9, 3, 'Refrigerator', NULL, NULL),
(10, 3, 'Mobile', NULL, NULL),
(11, 4, 'Sari', NULL, NULL),
(12, 4, 'frock', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `avatar`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sohidul Islam', NULL, 'sohidulislam@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$AXmPJQ.tg/8z5VJr6Z9Ar.XJzte2Ytw058vRAes3CxI7CXwAr/CT6', NULL, '2019-10-04 23:27:57', '2019-10-04 23:27:57'),
(2, 'Jahidul Islam', NULL, 'jahidulislam@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$t58WdGEyeKN5e/80mbWoRev4WSW8ANTJugJW.NfosJx31W0qxbjEq', NULL, '2019-10-05 04:47:42', '2019-10-05 04:47:42'),
(3, 'js Ripom', '018789743525', 'jsripon@gmail.com', NULL, NULL, NULL, '2021-07-06 06:16:28', '$2y$10$qFASBmtDT8Zo0SgTHoaoqe1yUGH2WTESbQZmpcRvkRaU0RV.4hFie', NULL, '2021-07-06 06:13:37', '2021-07-06 06:16:28'),
(4, 'Ab Rahim', NULL, 'programmer19710@gmail.com', NULL, 'google', '110895528886761815730', NULL, NULL, NULL, '2021-07-10 02:07:39', '2021-07-10 02:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(28, 3, 6, NULL, NULL),
(29, 3, 10, NULL, NULL),
(30, 3, 5, NULL, NULL),
(33, 3, 12, NULL, NULL),
(34, 3, 7, NULL, NULL),
(35, 3, 11, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newslaters`
--
ALTER TABLE `newslaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `newslaters`
--
ALTER TABLE `newslaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
