-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 09:10 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(4, 1, 28, 'HP Leptop', 49099, 1, 'hp.png'),
(5, 1, 18, 'APPLE iPhone 14', 73990, 1, 'iphone.png'),
(6, 1, 25, '7 Running Horses Reprint', 229, 1, 'saf.png');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'shubham yadav', 'shubham@gmail.com', '8234567890', 'product quality is good ');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'shubham yadav', '8345678906', 'shubham@gmail.com', 'cash on delivery', 'flat no. kothrud, kothrud, pune, maharastra, india - 411038', 'DELL Leptop  (39000 x 1) - ', 39000, '2023-01-08', 'completed'),
(2, 1, 'bhumbhum', '8234567890', 'bhumbhum@gmail.com', 'cash on delivery', 'flat no. kothrud, kothrud, pune, maharastra, india - 411038', 'Samsung Galaxy M13 (12999 x 1) - ', 12999, '2023-01-08', 'pending'),
(3, 1, 'shubhu', '1234567890', 'shubhu@gmail.com', 'cash on delivery', 'flat no. kothrud, kothrud, pune, maharastra, india - 411038', 'Knife (178 x 1) - ', 178, '2023-01-08', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `category` varchar(1000) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `category`, `image_01`, `image_02`, `image_03`) VALUES
(18, 'APPLE iPhone 14', '(Blue, 128 GB)', 73990, 'mobile', 'iphone.png', 'iphone.png', 'iphone.png'),
(19, 'REDMI Note 11 SE ', ' (Cosmic White, 64 GB)  (6 GB RAM)', 11499, 'mobile', 'redmi.png', 'redmi.png', 'redmi.png'),
(20, 'Samsung Galaxy M13', '(Power Black, 128 GB)  (6 GB RAM)', 12999, 'mobile', 'samsung.png', 'samsung.png', 'samsung.png'),
(21, 'iVBOX Max-Pro', ' Induction Non-Stick With Outer Hard-Stone Coating Fry Pan 24 cm diameter with Lid 1.5 L capacity  (Aluminium, Non-stick, Induction Bottom)', 474, 'kitchen ', 'ivbox.png', 'ivbox.png', 'ivbox.png'),
(22, 'Knife', 'Green, Peeler, Knife', 178, 'kitchen ', 'knife.png', 'knife.png', 'knife.png'),
(23, 'Cooking Oil Dispenser Set ', '500 ml (Pack of 7)', 199, 'kitchen ', 'jg.png', 'jg.png', 'jg.png'),
(24, 'Decal O Decal Wall Decals', ' &#39; Pink Tree With Birds Cage And Nest &#39;(PVC Vinyl,Multicolour) Large Self Adhesive Sticker  (Pack of 1)', 139, 'home decor', 'wall decals.png', 'wall decals.png', 'wall decals.png'),
(25, '7 Running Horses Reprint', '14 inch x 20 inch Painting  (With Frame)', 229, 'home decor', 'saf.png', 'saf.png', 'saf.png'),
(26, ' Key Holder for Wall', 'Wall and Home Decor Decorative Showpiece - 6 cm  (Wood, Brown)', 169, 'home decor', 'key holder.png', 'key holder.png', 'key holder.png'),
(27, 'DELL Leptop ', '(8 GB/256 GB SSD/Windows 11 Home) Vostro 3515 Thin and Light Laptop  (15.6 Inch, Carbon, 1.8 Kg, With MS Office)', 39000, 'leptop', 'dell.png', 'dell.png', 'dell.png'),
(28, 'HP Leptop', ' (8 GB/512 GB SSD/Windows 11 Home) 15s- eq2144au Thin and Light Laptop  (15.6 inch, Natural Silver, 1.69 kg, With MS Office)', 49099, 'leptop', 'hp.png', 'hp.png', 'hp.png'),
(29, 'ASUS Leptop', '(8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/144 Hz) FX506LHB-HN358W Gaming Laptop  (15.6 inch, Black Plastic, 2.30 kg kg)', 52999, 'leptop', 'asus.png', 'asus.png', 'asus.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'shubham', 'shubham@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(2, 'shubhu', 'shubhuyadav243@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
