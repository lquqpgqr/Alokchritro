-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2020 at 02:00 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alokchritro`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_contact`, `customer_address`, `customer_ip`) VALUES
(10, 'Abir', 'abir@test.com', '1234', '4545454', 'NO', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `sub_sub` int(10) NOT NULL,
  `s_total` int(10) NOT NULL,
  `o_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `sub_sub`, `s_total`, `o_date`) VALUES
(23, 10, 771236817, '19', 1, 52000, 52000, '2020-09-20'),
(24, 10, 1441520800, '16', 1, 45000, 45000, '2020-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `date`, `product_title`, `product_img1`, `product_price`, `product_desc`) VALUES
(1, 1, '2020-09-19 18:01:18', 'canon 7D ', '7d.jpg\r\n', 70000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(2, 2, '2020-09-19 18:15:37', '18-55mm canon', '18-55 canon.jpg', 7000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(3, 2, '2020-09-19 18:15:37', '18-55 mm nikon ', '18-55 nikon.jpg', 6000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(4, 2, '2020-09-19 18:15:37', '18-140 mm Nikon', '18-140 nikon.jpg', 13000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(5, 2, '2020-09-19 18:15:37', '18-135 mm canon', '18-135 canon.jpg', 15000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(6, 2, '2020-09-19 18:15:37', '50 mm canon', '50 canon.jpg', 9000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(7, 2, '2020-09-19 18:15:37', '50 mm nikon lens', '50 nikon.jpg', 13000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(8, 1, '2020-09-19 18:15:37', 'Canon 70D ', '70d.jpg', 55000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(9, 1, '2020-09-19 18:15:37', 'Canon 77d ', '77d.jpg', 56000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(10, 1, '2020-09-19 18:15:37', 'Canon 80D', '80d.jpg', 62000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(11, 1, '2020-09-19 18:15:37', 'Canon 200D ', '200d.jpg', 45000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(12, 1, '2020-09-19 18:15:37', 'Canon 800D ', '800d.jpg', 47000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(13, 1, '2020-09-19 18:15:37', 'Canon  1300D ', '1300d.jpg', 30000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(14, 1, '2020-09-19 18:09:50', 'nikon D3300', 'd3300.jpg', 31000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(15, 1, '2020-09-19 18:09:50', 'Nikon D3500 ', 'd3500.jpg', 35000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(16, 1, '2020-09-19 18:09:50', 'Nikon D5600 ', 'd5600.jpg', 45000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(17, 1, '2020-09-19 18:15:37', 'Nikon D7100', 'd7100.jpg', 52000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(18, 1, '2020-09-19 18:15:37', 'Nikon D7200', 'd7200.jpg', 65000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(19, 1, '2020-09-19 18:15:37', 'Nikon D7100', 'd7100.jpg', 52000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(20, 1, '2020-09-19 18:15:37', 'Nikon D7200', 'd7200.jpg', 65000, '<p>7 days replacement guarantee and 2 years warranty</p>'),
(21, 1, '2020-09-19 18:15:37', 'Nikon D7500', 'd7500.jpg', 80000, '<p>7 days replacement guarantee and 2 years warranty</p>');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Camera Body', 'all camera body are available here'),
(2, 'Lens', 'all lens are available hera');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', '1.jpg'),
(2, 'Slide number 2', '2.jpg'),
(3, 'Slide number 3', '3.jpg'),
(4, 'Slide number 4', '4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
