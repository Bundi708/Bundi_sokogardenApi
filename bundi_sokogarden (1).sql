-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 12:35 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bundi_sokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(10) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_category`, `product_image`) VALUES
(1, 'OppoF11', '16gb ram 128gb storage black android 12', 20000, 'electronics', 'OppoF11.webp'),
(3, 'Refrigerator', 'Large, with Freezer and Fridge Compartments ', 40000, 'Kitchen', 'fridge.jpeg'),
(4, 'Microwave', 'Large of 7L, with a perfect turn table for even heating', 30000, 'Kitchen', 'microwave.jpeg'),
(5, 'Microphone', 'High quality sound input and comfortable adjusting', 15000, 'Musical Equipment', 'microphone.jpeg'),
(6, 'Duvet', 'Heavy with warmth and long lasting', 2500, 'Bedding', 'duvet.jpeg'),
(7, 'Nike Sneaker', 'Feels Comfortable and Durable', 2500, 'Clothing', 'shoe.jpeg'),
(8, 'corriander', 'Adds Flavour to food like meat', 25, 'Food stuff', 'dania.jpeg'),
(9, 'Novels', 'All Novels types with the most interesting memories', 750, 'Reading Materials', 'novel.jpeg'),
(10, 'Carpet', 'Heavy,  Comfortable and Durable', 8500, 'House Equipment', 'carpet.jpeg'),
(11, 'Flash Disk', 'Storage - 64GB Durable and Long Lasting', 1600, 'Electronic', 'flash disk.jpeg'),
(12, 'money bag', 'Large on storage and Flexible', 4500, 'clothing', 'bag.jpeg'),
(13, 'Knife', 'Sharp and of Heavy Stainless steel', 300, 'Kitchen', 'knife.jpeg'),
(14, 'Towel', 'Small Size and Heavy', 600, 'Clothing', 'towels.jpeg'),
(15, 'Router', 'High Signal Capture and with a Power bank', 3500, 'Internet', 'router.jpeg'),
(16, 'Bluetooth Speaker', 'High Quality Sound and Long Lasting Battery', 1500, 'Electronic', 'bt.jpeg'),
(17, 'Moper', 'Long Lasting and Perfect in its work', 35000, 'Cleaning', 'moper.jpeg'),
(18, 'Bruffen', 'Relieves pain and worms', 250, 'Medical', 'drugs.jpeg'),
(19, 'Leather Belt', 'Comfortable and Adjustable', 500, 'Clothing', 'belt.jpeg'),
(20, 'Braces', 'Comfortable and fitting till recovery', 6000, 'Medical', 'braces.jpeg'),
(21, 'Remote Toy', 'Strong Signal, powerful and battery efficient', 4000, 'Kids', 'gaming.jpeg'),
(22, 'computer mouse', 'wired computer mouse', 200, 'electronics', 'mouse.jpeg'),
(23, 'lambogini', 'a vehicle', 1400000, 'transport means', 'lambo.jpeg'),
(24, 'coke', 'a cold drink', 500, 'beverage', 'johnsatwork-coke-672295_1920.jpg'),
(25, 'english', 'a dictionary recent version', 1500, 'stationary', 'lucyneary8403-dictionary-2323545_1920.jpg'),
(26, 'bracelet', 'hand brace', 150, 'braces', 'lulek41-bracelet-144646_1920.jpg'),
(27, 'guitar', 'a musical requirement', 5000, 'musical instument', 'piro4d-guitar-2216068_1920.jpg'),
(28, 'flowers', 'an artificial scented flower', 500, 'bonquet', 'sophiehuong-tulip-8765477_1920.jpg'),
(29, 'flowers', 'an artificial scented flower', 500, 'bonquet', 'sophiehuong-tulip-8765477_1920.jpg'),
(30, 'vivo phone', '4gb ram 64gb storage pink android 14', 5000, 'electronics', 'vivo.jpeg'),
(31, 'cake', 'creamed birhday cake', 1000, 'foods and snacks', 'birthday cake.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `phone`, `password`) VALUES
(1, 'Bundi', 'Bundikirema@gmail.com', '0702689807', 'qwerty123'),
(2, 'Kirema', 'kirema@gmail.com', '0702681127', 'qwerty127'),
(3, 'Binx', 'binxlb@gmail.com', '0702687845', 'qwerty128'),
(5, 'Binxlb', 'binxlobby@gmail.com', '0702688845', 'qwerty127'),
(7, 'Newton', 'newton@gmail.com', '0702778845', 'qwerty12p');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
