-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 14, 2021 at 07:32 PM
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
(5, '858130468_banner-3.jpg', 'Today Offer With Flat 60 % Off', 'Good To Here', 'shop', 'Buy Now', 14, '2021-09-03 09:06:33', 1);

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
(5, 'Murg', 0, 1, '2021-08-10 03:49:37'),
(6, 'Lunch', 12, 1, '2021-09-14 06:12:25'),
(7, 'Dinner', 13, 1, '2021-09-14 06:12:38'),
(8, 'Break Fast', 14, 1, '2021-09-14 06:12:56');

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
(2, 'FRIDAY', 'F', 200, 200, '2021-11-24', 1, '2021-08-25 10:38:43');

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
(4, 'Testing', '9010203040', 'Test', 1, '2021-09-03 11:11:43'),
(5, 'Karan', '1020304050', 'Karan', 1, '2021-09-13 10:45:29');

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
(1, 4, 'Chiken Biryani', 'Chiken Biryani', '278578084_Instant Pot Chicken Biryani.jpeg', 'non-veg', 1, '2021-08-14 10:43:59'),
(3, 8, 'Toast Tangled With Taste', 'Toast Tangled with Taste good for morning', '993750737_Thick and Rich Best Ever French Toast _ Tangled with Taste.jpg', 'veg', 1, '2021-08-14 10:47:26'),
(4, 8, 'French Toast', 'Freanch Toast is best ever for Break Fast ', '141538614_French Toast Bowls.jpeg', 'veg', 1, '2021-08-14 12:50:50'),
(5, 8, 'Idli recipe', 'Idli recipe is soft and healthy', '943373584_Idli Recipe in Instant Pot (Steamed Rice Cakes).jpeg', 'veg', 1, '2021-08-14 12:00:24'),
(6, 4, 'RasMalai', 'RasMalai is over one of the best dish in meal monkey website', '134539426_Rasmalai Recipe _ Easy Rasmalai Recipe.jpeg', 'veg', 1, '2021-09-14 06:38:36'),
(7, 3, 'Butter Masala', 'Butter Masala', '365085575_Paneer Butter Masala - Paneer Recipe Two Ways - Cubes N Juliennes.jpeg', 'veg', 1, '2021-09-14 06:41:41'),
(8, 4, 'Dahi Vada', 'Dahi Vada', '422912519_Super Soft And Tasty Dahi Vada Recipe - Video.jpeg', 'veg', 1, '2021-09-14 06:44:29'),
(9, 8, 'Italic Pasta', 'Italic Pasta', '875344903_Italian pasta salad, A healthy & yummy salad bowl, easy recipe.jpeg', 'veg', 1, '2021-09-14 06:47:28'),
(10, 7, 'Panjabi Samosa', 'Panjabi', '630659831_Samosa Recipe – How To Make Punjabi Samosa.jpeg', 'veg', 1, '2021-09-14 06:52:30'),
(11, 1, 'Rolls', 'Rolls', '372296313_Mixed Sprouts Wrap (  Wraps and Rolls) recipe.jpeg', 'veg', 1, '2021-09-14 06:56:19'),
(12, 1, 'Chaat Katka', 'Chaat Katka', '594694811_b2bfb319-d13c-4db2-a99f-af37552c4e7d.jpeg', 'veg', 1, '2021-09-14 06:59:14');

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
(1, 3, 'Full', 220, 1, '2021-08-16 10:25:47'),
(6, 1, 'Per Piece', 250, 1, '2021-08-16 10:50:25'),
(8, 4, 'Half', 250, 0, '2021-08-16 12:50:50'),
(9, 4, 'Full', 120, 1, '2021-08-17 11:16:20'),
(11, 5, 'Half', 75, 1, '2021-08-17 12:00:24'),
(12, 5, 'Full', 125, 1, '2021-08-17 12:20:14'),
(13, 6, 'Per Piece', 145, 1, '2021-09-14 06:38:36'),
(14, 7, 'Per Piece', 130, 1, '2021-09-14 06:41:41'),
(15, 8, 'Half', 70, 1, '2021-09-14 06:44:29'),
(16, 8, 'Full', 120, 1, '2021-09-14 06:44:29'),
(17, 9, 'Per Piece', 50, 1, '2021-09-14 06:47:28'),
(18, 10, 'Per Piece', 60, 1, '2021-09-14 06:52:30'),
(19, 11, 'Per Piece', 110, 1, '2021-09-14 06:56:19'),
(20, 12, 'Per Piece', 90, 1, '2021-09-14 06:59:14');

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
(3, 3, 6, 40, 3),
(4, 0, 11, 100, 8),
(5, 0, 6, 40, 4),
(6, 0, 11, 100, 5),
(7, 0, 6, 40, 5),
(8, 0, 11, 100, 4),
(9, 0, 6, 40, 5),
(10, 0, 11, 100, 5),
(11, 0, 17, 50, 5),
(12, 0, 13, 145, 3);

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
(1, 2, 'akshay', 'kherakshay@gmail.com', '9999999999', 'Test', 240, '', 240, '110076', 1, 'success', 'wallet', '1', 2, 'admin', '2021-08-16 08:13:01', '2021-08-15 06:08:19', '2021-09-03 11:08:06'),
(2, 2, 'akshay', 'kherakshay@gmail.com', '9999999999', 'test', 160, '', 160, '110076', 4, 'pending', 'wallet', '', 3, 'user', '0000-00-00 00:00:00', '2021-08-15 07:09:59', '0000-00-00 00:00:00'),
(3, 5, 'akshay', 'kherakshay@gmail.com', '9999999999', 'Test', 120, '', 120, '110076', 2, 'success', 'cod', '', 4, 'user', '0000-00-00 00:00:00', '2021-08-16 09:09:41', '2021-09-13 10:46:21');

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
(16, 'kher akshay', 'kherakshay5@gmail.com', '6356645049', '$2y$10$jqKHk6cGdBlNAehbJq2Ztu7gOr6ax6D4Q.JgLlxfhy6Y9P69z1yrG', 1, 1, 'dqvbzahkjifszvf', 'qstouzjnieicwaa', '', '2021-09-11 11:14:55'),
(25, 'jaypal', 'kherakshay007@gmail.com', '6356645049', '$2y$10$GY3OUKZBOA/INbrqtX3JcumrlBBDRYYH9PjSudmGgGFLcYkAutWDy', 1, 1, '', '', '', '2021-09-12 17:58:07'),
(26, 'jaypal', 'kherakshay007@gmail.com', '6356645049', '$2y$10$jqKHk6cGdBlNAehbJq2Ztu7gOr6ax6D4Q.JgLlxfhy6Y9P69z1yrG', 1, 1, '', '', '', '2021-09-12 17:58:07');

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
(2, 25, 50, 'Registration', 'in', '', '2021-08-24 05:11:38'),
(4, 2, 50, 'Shoping', 'out', '', '0000-00-00 00:00:00'),
(5, 2, 100, 'Added', 'in', '', '0000-00-00 00:00:00'),
(7, 25, 100, 'Added', 'in', '', '2021-08-24 05:58:29'),
(8, 2, 20, 'Added', 'in', '', '2021-08-24 05:59:02'),
(9, 2, 15, 'Added', 'in', '', '2021-08-27 06:00:35'),
(10, 2, 30, 'Added', 'in', '', '2021-08-26 06:01:17'),
(11, 2, 10, 'Added', 'in', '20200718111212800110168602301710786', '2021-08-26 06:04:04'),
(13, 26, 160, 'Order Id-2', 'out', '', '2021-08-26 06:09:59'),
(14, 2, 800, 'Added', 'in', '20200718111212800110168644701732407', '2021-08-26 06:17:19'),
(15, 3, 0, 'Register', 'in', '', '2021-08-25 08:00:53'),
(16, 2, 200, 'Order Id-3', 'out', '', '2021-08-25 04:29:04'),
(17, 2, 200, 'Order Id-4', 'out', '', '2021-08-25 04:30:51'),
(18, 3, 100, 'Test msg', 'in', '', '2021-08-25 08:22:33'),
(19, 2, 200, 'Test Msg', 'in', '', '2021-08-25 08:22:46'),
(22, 25, 50, 'Referral Amt from kherakshay@gmail.com', 'in', '', '2021-08-25 09:12:28'),
(23, 15, 300, 'Register', 'in', '', '2021-09-03 10:00:57'),
(24, 16, 300, 'Register', 'in', '', '2021-09-11 11:14:56'),
(25, 16, 200, 'Order Id-0', 'out', '', '2021-09-14 05:25:11');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dish_cart`
--
ALTER TABLE `dish_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `dish_details`
--
ALTER TABLE `dish_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
