-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 06, 2021 at 01:00 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin@gmail.com'),
(2, 'akshay', 'akshay', 'akshay', 'kherakshay007@gmail.com'),
(3, 'jaypal', 'jaypal', 'jaypal', 'jaypalkher@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `baanner`
--

CREATE TABLE `baanner` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `sub_heading` varchar(500) NOT NULL,
  `link` varchar(100) NOT NULL,
  `link_txt` varchar(100) NOT NULL,
  `order_number` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baanner`
--

INSERT INTO `baanner` (`id`, `image`, `heading`, `sub_heading`, `link`, `link_txt`, `order_number`, `added_on`, `status`) VALUES
(2, '546847873_banner-4.jpg', 'Drink & Heathy Food', 'Fresh Heathy and Organic', 'shop', 'Order Now', 1, '2021-08-21 03:06:53', 1),
(3, '145318329_banner-1.jpg', 'Enjoy With Family Pack', '50 %  Flat Discount', 'shop', 'shop', 12, '2021-08-31 09:16:34', 1),
(4, '966859989_banner-2.jpg', 'SHARE WITH YOUR FRIEND', 'TODAY SPECIAL', 'shop', 'ORDER NOW', 1112, '2021-08-31 09:20:44', 1),
(5, '858130468_banner-3.jpg', 'Today Offer With Flat 60 % Off', 'Good To Here', 'Buy Now', 'shop', 14, '2021-09-03 09:06:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `order_number` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `order_number`, `status`, `added_on`) VALUES
(1, 'Chaat & Snacks', 1, 1, '2021-08-09 12:06:32'),
(2, 'Chinese', 2, 1, '2021-08-09 12:36:41'),
(3, 'South Indian', 3, 1, '2021-08-09 03:06:59'),
(4, 'Desserts', 4, 1, '2021-08-10 03:07:18'),
(5, 'Murg', 0, 0, '2021-08-10 03:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `added_on`) VALUES
(1, 'akshay', 'kherakshay@gmail.com', '9999999999', 'testing subject', 'testing message', '2021-08-11 03:21:43'),
(4, 'kher akshay', 'kherakshay007@gmail.com', '6356645049', 'Very Fast Delivery', 'very fast delivery', '2021-08-31 11:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_code`
--

CREATE TABLE `coupon_code` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `coupon_type` enum('P','F') NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `cart_min_value` int(11) NOT NULL,
  `expired_on` date NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_code`
--

INSERT INTO `coupon_code` (`id`, `coupon_code`, `coupon_type`, `coupon_value`, `cart_min_value`, `expired_on`, `status`, `added_on`) VALUES
(1, 'FIRST50', 'P', 10, 500, '2021-08-31', 1, '2021-08-22 05:31:03'),
(2, 'FRIDAY', 'F', 200, 200, '2021-09-10', 1, '2021-08-25 10:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_boy`
--

CREATE TABLE `delivery_boy` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_boy`
--

INSERT INTO `delivery_boy` (`id`, `name`, `mobile`, `password`, `status`, `added_on`) VALUES
(1, 'rahulbhai sagar', '1234567890', 'rahulbhai sagar', 1, '2021-08-11 08:06:06'),
(2, 'rahulbhai', '1234567891', 'rahulbhai', 1, '2021-08-11 08:07:25'),
(3, 'Demo', '9876543210', 'Demo', 1, '2021-09-03 11:04:03'),
(4, 'Testing', '9010203040', 'Test', 1, '2021-09-03 11:11:43');

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `dish` varchar(100) NOT NULL,
  `dish_detail` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `type` enum('veg','non-veg') NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`id`, `category_id`, `dish`, `dish_detail`, `image`, `type`, `status`, `added_on`) VALUES
(1, 4, 'Gulab Jamun', 'Gulab Jamun', '977945963_862169053_gulab-jamun.jpg', 'veg', 1, '2021-08-14 10:43:59'),
(3, 2, 'Chow mein', 'Chow mein', '836724175_Chowmein.jpg', 'non-veg', 1, '2021-08-14 10:47:26'),
(4, 5, 'Butter Chicken', 'Butter chicken or murg makhani is a dish, originating in the Indian subcontinent, of chicken in a mildly spiced tomato sauce.', '348714192_30-Minute-Instant-Pot-Butter-Chicken-7.jpg', 'non-veg', 1, '2021-08-14 12:50:50'),
(5, 2, 'Testing', 'testing', '809597923_836724175_Chowmein.jpg', 'veg', 0, '2021-08-14 12:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `dish_cart`
--

CREATE TABLE `dish_cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_cart`
--

INSERT INTO `dish_cart` (`id`, `user_id`, `dish_detail_id`, `qty`, `added_on`) VALUES
(3, 2, 6, 2, '2021-08-16 09:18:31');

-- --------------------------------------------------------

--
-- Table structure for table `dish_details`
--

CREATE TABLE `dish_details` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `attribute` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_details`
--

INSERT INTO `dish_details` (`id`, `dish_id`, `attribute`, `price`, `status`, `added_on`) VALUES
(1, 3, 'Full', 300, 1, '2021-08-16 10:25:47'),
(2, 3, 'Half', 170, 1, '2021-08-16 10:49:45'),
(6, 1, 'Per Piece', 40, 1, '2021-08-16 10:50:25'),
(8, 4, 'Half', 250, 0, '2021-08-16 12:50:50'),
(9, 4, 'Full', 410, 1, '2021-08-17 11:16:20'),
(11, 5, 'Test1', 100, 1, '2021-08-17 12:00:24'),
(12, 5, 'Test2', 200, 0, '2021-08-17 12:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_details_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `dish_details_id`, `price`, `qty`) VALUES
(1, 1, 6, 40, 6),
(2, 2, 6, 40, 4),
(3, 3, 6, 40, 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `total_price` float NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `final_price` float NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `delivery_boy_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_type` varchar(10) NOT NULL,
  `payment_id` varchar(100) NOT NULL,
  `order_status` int(11) NOT NULL,
  `cancel_by` enum('user','admin') NOT NULL,
  `cancel_at` datetime NOT NULL,
  `added_on` datetime NOT NULL,
  `delivered_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`id`, `user_id`, `name`, `email`, `mobile`, `address`, `total_price`, `coupon_code`, `final_price`, `zipcode`, `delivery_boy_id`, `payment_status`, `payment_type`, `payment_id`, `order_status`, `cancel_by`, `cancel_at`, `added_on`, `delivered_on`) VALUES
(1, 2, 'akshay', 'kherakshay@gmail.com', '9999999999', 'Test', 240, '', 240, '110076', 3, 'pending', 'wallet', '', 4, 'admin', '2021-08-16 08:13:01', '2021-08-15 06:08:19', '2021-09-03 11:08:06'),
(2, 2, 'akshay', 'kherakshay@gmail.com', '9999999999', 'test', 160, '', 160, '110076', 4, 'pending', 'wallet', '', 4, 'user', '0000-00-00 00:00:00', '2021-08-15 07:09:59', '0000-00-00 00:00:00'),
(3, 5, 'akshay', 'kherakshay@gmail.com', '9999999999', 'Test', 120, '', 120, '110076', 4, 'pending', 'cod', '', 4, 'user', '0000-00-00 00:00:00', '2021-08-16 09:09:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `order_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `order_status`) VALUES
(1, 'Pending'),
(2, 'Cooking '),
(3, 'On the Way'),
(4, 'Delivered'),
(5, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `dish_detail_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `order_id`, `dish_detail_id`, `rating`) VALUES
(1, 1, 6, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `cart_min_price` int(11) NOT NULL,
  `cart_min_price_msg` varchar(250) NOT NULL,
  `website_close` int(11) NOT NULL,
  `wallet_amt` int(11) NOT NULL,
  `website_close_msg` varchar(250) NOT NULL,
  `referral_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `cart_min_price`, `cart_min_price_msg`, `website_close`, `wallet_amt`, `website_close_msg`, `referral_amt`) VALUES
(1, 200, 'This is Demo for rs50', 0, 300, 'Website Open for today', 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `email_verify` int(11) NOT NULL,
  `rand_str` varchar(20) NOT NULL,
  `referral_code` varchar(20) NOT NULL,
  `from_referral_code` varchar(20) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `status`, `email_verify`, `rand_str`, `referral_code`, `from_referral_code`, `added_on`) VALUES
(2, 'akshay', 'kherakshay@gmail.com', '9999999999', '$2y$10$93n.ZCVOWBpNt3xFUrn3keKgYYF3TUs3jTLzZMOD2Q.oQlXTcj4Dq', 1, 1, 'lmkaetixyrzqoqy', 'lmkaetixyrzqoqds', '', '2021-08-21 05:11:37'),
(5, 'rajpal', 'rajpalkhavad@gmail.com', '9999999999', 'rajpal', 1, 1, 'zdoxxhajyeqtgpp', 'lhqtkjofzevfdai', 'lmkaetixyrzqoqds', '2021-08-21 08:48:08'),
(6, 'Kher Akshay Testing', 'akshay007.kher@gmail.com', '6356645049', '$2y$10$tLX4NdzT5v0qr5dyvLchzeXgwsYxDxBDm0FaibCNzlOJs9IVHDMhi', 1, 1, 'phsbywlugvxlphn', 'naubpfdkyjmlvir', '', '2021-08-30 09:39:52'),
(14, 'kher akshay', 'kherakshay007@gmail.com', '6356645049', '$2y$10$wTqsJUjFtTFLnddhrcSlPuUUbA1WZBuq7qNAMhK1d/xkhIxPwTeQ.', 1, 1, 'dligbrjnudxqotu', 'srfpijhbbeoecnt', '', '2021-08-31 04:49:48'),
(15, 'Akshay Kher', 'kherakshay5@gmail.com', '6356645049', '$2y$10$TSSm9Wd3dbs4PM/QKnLR7ujMUSbjtAOVP54RXlpGhmwJF2IeNmKf6', 1, 1, 'pusfbkhsmlorhaa', 'fdymxnipmgskvca', '', '2021-09-03 10:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `user_id`, `amt`, `msg`, `type`, `payment_id`, `added_on`) VALUES
(2, 2, 50, 'Registration', 'in', '', '2021-08-24 05:11:38'),
(4, 2, 50, 'Shoping', 'out', '', '0000-00-00 00:00:00'),
(5, 2, 100, 'Added', 'in', '', '0000-00-00 00:00:00'),
(7, 2, 100, 'Added', 'in', '', '2021-08-24 05:58:29'),
(8, 2, 20, 'Added', 'in', '', '2021-08-24 05:59:02'),
(9, 2, 15, 'Added', 'in', '', '2021-08-27 06:00:35'),
(10, 2, 30, 'Added', 'in', '', '2021-08-26 06:01:17'),
(11, 2, 10, 'Added', 'in', '20200718111212800110168602301710786', '2021-08-26 06:04:04'),
(13, 2, 160, 'Order Id-2', 'out', '', '2021-08-26 06:09:59'),
(14, 2, 800, 'Added', 'in', '20200718111212800110168644701732407', '2021-08-26 06:17:19'),
(15, 3, 0, 'Register', 'in', '', '2021-08-25 08:00:53'),
(16, 2, 200, 'Order Id-3', 'out', '', '2021-08-25 04:29:04'),
(17, 2, 200, 'Order Id-4', 'out', '', '2021-08-25 04:30:51'),
(18, 3, 100, 'Test msg', 'in', '', '2021-08-25 08:22:33'),
(19, 2, 200, 'Test Msg', 'in', '', '2021-08-25 08:22:46'),
(22, 2, 50, 'Referral Amt from kherakshay@gmail.com', 'in', '', '2021-08-25 09:12:28'),
(23, 15, 300, 'Register', 'in', '', '2021-09-03 10:00:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baanner`
--
ALTER TABLE `baanner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_code`
--
ALTER TABLE `coupon_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_cart`
--
ALTER TABLE `dish_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dish_details`
--
ALTER TABLE `dish_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `baanner`
--
ALTER TABLE `baanner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupon_code`
--
ALTER TABLE `coupon_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_boy`
--
ALTER TABLE `delivery_boy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dish_cart`
--
ALTER TABLE `dish_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dish_details`
--
ALTER TABLE `dish_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
