-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2026 at 10:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_desc` text DEFAULT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `pro_desc`, `price`, `image`) VALUES
(11102, 'Classic Cotton T-Shirt', 'A soft, breathable cotton t-shirt designed for all-day comfort. Perfect for casual wear, available in multiple colors and sizes.', 599.00, 'pro2.jpeg'),
(11104, 'Nike Air Zoom Pegasus 40', 'Lightweight running shoes with breathable mesh upper and cushioned sole for comfort.', 4000.00, 'pro3.jpeg'),
(11105, 'Adidas Ultraboost 22', 'High-performance shoes with responsive Boost midsole and supportive knit design.', 11000.00, 'maxresdefault.jpg'),
(10021001, 'Men\'s Maroon Slim Fit Casual Shirt', 'A stylish full-sleeve maroon shirt with contrast white stitching, button-down front, and dual chest pockets. The shirt has a modern slim fit design, rolled-up sleeves option, and is made from a comfortable cotton-blend fabric. Perfect for casual outings, parties, or semi-formal occasions.', 799.00, 'pro1.jpg'),
(10021004, 'Woodland Leather Trek Boots', 'Durable outdoor trekking shoes with leather finish and rugged sole.', 5000.00, 'images.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(255) NOT NULL,
  `name` varchar(155) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `mobile`, `password`) VALUES
('user-4469-1765292857', 'ronit', 'ronit45@gmail.com', 7894561256, 'Ronit@123'),
('user-5690-1756466469', 'ruma', 'ruma@gmail.com', 9865897458, 'Souravkar2001@'),
('user-7452-1756465061', 'rimi', 'rimi@gmail.com', 8670480766, '$2y$10$/7T72taCeywe3e9GzUctg.UyrXucXk5LszhtItPq3e.0RuzTI92mW'),
('user-7682-1756622610', 'arya santra', 'arya22@gmail.com', 8659745869, 'Arya2009@'),
('user-8068-1756664969', 'sourav kar', 'souravkar88@gmail.com', 8670480715, 'Sourav2000@');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10021005;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
