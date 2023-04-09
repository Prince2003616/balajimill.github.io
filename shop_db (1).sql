-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2023 at 12:50 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(1, 9, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line', 0, 1, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line'),
(2, 9, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line', 0, 1, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line'),
(3, 9, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line', 0, 1, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line'),
(4, 15, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line', 0, 3, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line'),
(5, 15, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line', 0, 1, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line'),
(6, 15, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line', 0, 3, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line'),
(7, 15, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line', 0, 3, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line'),
(8, 15, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line', 0, 2, '<br />\r\n<b>Notice</b>:  Undefined variable: fetch_product in <b>C:xampphtdocsproshop.php</b> on line');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` int(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 20, 'tamizh', 'tamizhsrija@gmail.com', 2147483647, 'Need to know more details about transportation');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(12) NOT NULL,
  `email` varchar(200) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(50) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 18, 'Kumaran', 123456789, 'kumaran2000@gmail.com', 'cash on delivery', 'flat no. 554, egeargherhghhahh, hsrthshj, tjsdrstrj - 567891', ', Moon Dhal (1) ', 65, '23-Mar-2023', ''),
(2, 19, 'Samsu', 2147483647, 'samsu@gmail.com', 'cash on delivery', 'flat no. 22, Railway feeder road, Virudhunagar, India - 626001', ', Moon Dhal (3) ', 195, '24-Mar-2023', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(2, 'Moon Dhal', '', '', 65, 'imgone.jpg'),
(3, 'dhal', '', '', 45, 'ones.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(5, 'Siva', 'sivasankar4101@gmail.com', '78314dd13a64aea5d8e3bc0c0e3ce54b', 'admin'),
(7, 'Vinoth', 'vinoth83@gmail.com', '99375700cfebdd308d5ecde6ce0c208c', 'user'),
(8, 'Maruthu', 'maruthu@gmail.com', '8d57dfe7398336d6b9164b4d62b6b42b', 'user'),
(9, 'Sankar', 'san@gmail.com', '9f5a44a734ac9e43b5968d0f3b71d69b', 'user'),
(10, 'Ben Stokes', 'Ben@gmail.com', '092f2ba9f39fbc2876e64d12cd662f72', 'user'),
(12, 'Radha', 'radha@gmail.com', '0280a430e35fee634f01cbc5a8178864', 'user'),
(13, 'King', 'king@gmail.com', 'b2086154f101464aab3328ba7e060deb', 'user'),
(15, 'Vetri', 'vetri81@gmail.com', 'ec4bc707be571e2011e26288de2d44b6', 'user'),
(16, 'Naveen', 'naveen65@gmail.com', 'ba7ef6156bb02a7f35c6ac2f25137703', 'user'),
(17, 'Santha', 'santha@gmail.com', 'a591024321c5e2bdbd23ed35f0574dde', 'user'),
(18, 'koli', 'koli@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(19, 'Samsu', 'samsu@gmail.com', 'f1d2e4edcf68d0fa3019fe250876915c', 'user'),
(20, 'tamizh', 'tamizhsrija@gmail.com', '3999954f95203c08c2148a99d418aef4', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
