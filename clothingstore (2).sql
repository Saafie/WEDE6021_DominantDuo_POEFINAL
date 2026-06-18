-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2026 at 09:06 PM
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
-- Database: `clothingstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `admin_Id` int(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`admin_Id`, `username`, `email`, `password`) VALUES
(1, 'admin1', 'manager@clothingstore.co.za', '$2y$10$DlaQdiBaMfGII2Jankuyh.94WfsV0Vs2xvmzsmaPK1ca1PTcT8tCe'),
(2, 'admin2', 'staff@clothingstore.co.za', '$2y$10$wE/TfM4.jM7S25.C5oJqX.e5vT4Vq6OQ2Y0uR1N5ZtqJ7A/G9gG0q'),
(3, 'admin3', 'support@clothingstore.co.za', '$2y$10$wE/TfM4.jM7S25.C5oJqX.e5vT4Vq6OQ2Y0uR1N5ZtqJ7A/G9gG0q'),
(4, 'admin4', 'lead@clothingstore.co.za', '$2y$10$wE/TfM4.jM7S25.C5oJqX.e5vT4Vq6OQ2Y0uR1N5ZtqJ7A/G9gG0q'),
(5, 'admin5', 'hr@clothingstore.co.za', '$2y$10$wE/TfM4.jM7S25.C5oJqX.e5vT4Vq6OQ2Y0uR1N5ZtqJ7A/G9gG0q'),
(7, 'admin123', 'admin@gmail.com', '$2y$10$wE/TfM4.jM7S25.C5oJqX.e5vT4Vq6OQ2Y0uR1N5ZtqG.n1oO');

-- --------------------------------------------------------

--
-- Table structure for table `tblitem`
--

CREATE TABLE `tblitem` (
  `item_Id` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `item_Name` varchar(20) NOT NULL,
  `item_cond` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblitem`
--

INSERT INTO `tblitem` (`item_Id`, `user_ID`, `item_Name`, `item_cond`) VALUES
(1, 2, 'Denim Jeans', 'Like new'),
(2, 1, 'cotton T-Shirt', 'Like new'),
(3, 3, 'Slim FIt Shirt', 'Like new'),
(4, 4, 'leather Jacket', 'Like new'),
(5, 5, 'Running Sneakers', 'Like new');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `order_ID` int(11) NOT NULL,
  `user_ID` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `tot-amount` int(6) NOT NULL,
  `size` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`order_ID`, `user_ID`, `product_id`, `quantity`, `date`, `tot-amount`, `size`) VALUES
(2, 2, 3, 0, '2026-05-03 20:09:25', 250, NULL),
(4, 4, 5, 0, '2026-05-03 20:09:53', 600, NULL),
(5, 5, 2, 0, '2026-05-03 20:10:37', 350, NULL),
(60, 7, 5, 2, '2026-06-18 21:05:38', 0, 'xs');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `image_class` varchar(50) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT 0,
  `description` varchar(1000) NOT NULL,
  `sizes` varchar(100) DEFAULT NULL,
  `item_condition` varchar(50) NOT NULL DEFAULT 'Pristine'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`product_id`, `name`, `price`, `category`, `image_class`, `stock_quantity`, `description`, `sizes`, `item_condition`) VALUES
(1, 'Cream knitted cardigan', 2250.00, 'Polo', 'Images/uploads/6a34325803c1a_polo_Set.png', 9, '', 's', 'Pristine'),
(2, 'Ruffled Shirt Dress', 1800.00, 'Polo', 'Images/uploads/6a33e2f257bd4_polo_Dress.jpg', 10, '', 'xs', 'Pristine'),
(3, 'White Zip Cardigan', 2800.00, 'Polo', 'Images/uploads/6a3430eada01e_polo_Jersey.jpg', 10, '', 'L', 'Pristine'),
(5, 'Redbull Top', 1500.00, 'Women', 'Images/uploads/6a33e333207f1_redbull_Top.png', 7, 'The Puma Navy Crop Top, is a Second Hand branded top still in pristine condition. Made of lightweight breathable material, with bold racing graphics and other sponsored logos\r\n\r\nSuitable for motorsport supporters giving a sporty and edgy look. Good Condition: Colour is still stong and had a minimal wear. \r\nSelling price better than retailers.', 'xs', 'Pristine'),
(6, 'Ferrari Top', 1200.00, 'Women', 'Images/uploads/6a33e3601d4dc_Ferrari_Top.png', 9, 'The Puma Red Crop Top, is a Second Hand branded top still in pristine condition. Made of lightweight breathable material, with bold racing graphics and other sponsored logos.\r\n\r\nSuitable for motorsport supporters giving a sporty and edgy look. Good Condition: Colour is still stong and had a minimal wear. \r\nSelling price better than retailers', 'xs', 'Pristine'),
(7, 'Mercedes Top', 1100.00, 'Women', 'Images/uploads/6a33e37a91a70_mercedes_Top.png', 8, 'The Puma Black Crop Top, is a Second Hand branded top still in pristine condition. Made of lightweight breathable material, with bold racing graphics and other sponsored logos.\r\n\r\nSuitable for motorsport supporters giving a sporty and edgy look. Good Condition: Colour is still stong and had a minimal wear. \r\nSelling price better than retailers', 'xs', 'Pristine'),
(8, 'Christian dior sweater', 1500.00, 'Women', 'Images/uploads/6a33e325da03b_diorSweater.jpg', 1, 'This is very nice blue Dior', 'S', 'Excellent'),
(11, 'Polo top', 1000.00, 'Polo', 'Images/uploads/6a33f1ca13135_polo_Crop.jpg', 1, '', 'xs', 'Pristine'),
(19, 'Polo crop top white', 1000.00, 'Polo', 'Images/uploads/6a3436d5ca2d8_polo_white.jfif', 1, 'Good condition, white inst faded', 'M', 'Excellent'),
(22, 'Chanel Jacket', 1650.00, 'Women', 'Images/uploads/6a3438379b4a2_chanel_Jacket.jpg', 2, '', 'L', 'Excellent');

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchasehistory`
--

CREATE TABLE `tblpurchasehistory` (
  `purchase_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_reference` varchar(50) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `image_class` varchar(255) DEFAULT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpurchasehistory`
--

INSERT INTO `tblpurchasehistory` (`purchase_id`, `user_id`, `order_reference`, `product_id`, `product_name`, `price`, `quantity`, `size`, `image_class`, `purchase_date`) VALUES
(1, 7, 'ORD-6C8BA0', 1, 'Cream Knitted Cardigan', 2250.00, 1, 'S', 'Images/uploads/6a33e3c704200_polo_Set.png', '2026-06-18 14:50:30'),
(2, 7, 'ORD-2437A8', 5, 'Redbull Top', 1500.00, 1, 'xs', 'Images/uploads/6a33e333207f1_redbull_Top.png', '2026-06-18 15:15:46'),
(3, 7, 'ORD-2437A8', 6, 'Ferrari Top', 1200.00, 1, 'xs', 'Images/uploads/6a33e3601d4dc_Ferrari_Top.png', '2026-06-18 15:15:46'),
(4, 7, 'ORD-063FDA', 8, 'Christian dior sweater', 1700.00, 1, 'S', 'Images/uploads/6a33e325da03b_diorSweater.jpg', '2026-06-18 15:18:56'),
(5, 7, 'ORD-F15170', 13, 'Christian Dior White Top', 1150.00, 1, 'S', 'Images/uploads/6a33fa9f33018_dior_White.jfif', '2026-06-18 17:20:31'),
(6, 7, 'ORD-6C851C', 1, 'Cream knitted cardigan', 2250.00, 1, '', 'Images/uploads/6a34325803c1a_polo_Set.png', '2026-06-18 18:12:22'),
(7, 7, 'ORD-6C851C', 5, 'Redbull Top', 1500.00, 2, 'xs', 'Images/uploads/6a33e333207f1_redbull_Top.png', '2026-06-18 18:12:22'),
(8, 7, 'ORD-FC2AB9', 8, 'Christian dior sweater', 1500.00, 1, 'S', 'Images/uploads/6a33e325da03b_diorSweater.jpg', '2026-06-18 18:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblsellerrequest`
--

CREATE TABLE `tblsellerrequest` (
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsellerrequest`
--

INSERT INTO `tblsellerrequest` (`request_id`, `user_id`, `brand`, `description`, `image_path`, `status`, `created_at`) VALUES
(1, 7, 'Christian Dior White Top', 'It is a good sweater, thats in very good condition and the colour looks in good condition.', 'Images/uploads/6a33f6de0454c_seller_dior_White.jfif', 'Contacted', '2026-06-18 13:47:10'),
(2, 7, 'Christian Dior Sweater', 'In good condition, fluffy and very warm. No knicks in the clothing ', 'Images/uploads/6a33fe1404c3d_seller_1057008975024725363.jfif', 'Authenticating', '2026-06-18 14:17:56'),
(5, 7, 'Christian Dior ', 'hgjg', 'Images/uploads/6a3408fdd279e_seller_diorSweater.jpg', 'Completed', '2026-06-18 15:04:29'),
(6, 7, 'Polo crop top white', 'Very good condition and has no knicks and colour isnt faded', 'Images/uploads/6a342989945ec_seller_866802259541882275.jfif', 'Completed', '2026-06-18 17:23:21'),
(7, 7, 'Polo crop top white', 'Good condition', 'Images/uploads/6a3435ad6eec8_seller_polo_white.jfif', 'Completed', '2026-06-18 18:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `user_ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `last_Name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email_Address` varchar(100) DEFAULT NULL,
  `user_status` varchar(20) DEFAULT 'pending',
  `res_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`user_ID`, `name`, `last_Name`, `username`, `password`, `email_Address`, `user_status`, `res_address`) VALUES
(1, 'Lewis', 'Hamilton', 'lhamilton', '$2y$10$wE/TfM4.jM7S25.C5oJqX.e5vT4Vq6OQ2Y0uR1N5ZtqJ7A/G9gG0q', 'lewis.h@f1.com', 'approved', '44 Silverstone Circuit'),
(2, 'Max', 'Verstappen', 'mverstappen', '$2y$10$wE/TfM4.jM7S25.C5oJqX.e5vT4Vq6OQ2Y0uR1N5ZtqJ7A/G9gG0q', 'max.v@f1.com', 'approved', '1 Red Bull Ring'),
(3, 'Charles', 'Leclerc', 'cleclerc', '$2y$10$wE/TfM4.jM7S25.C5oJqX.e5vT4Vq6OQ2Y0uR1N5ZtqJ7A/G9gG0q', 'charles.l@f1.com', 'approved', '16 Monaco Grand Prix Road'),
(4, 'Lando', 'Norris', 'lnorris', '$2y$10$wE/TfM4.jM7S25.C5oJqX.e5vT4Vq6OQ2Y0uR1N5ZtqJ7A/G9gG0q', 'lando.n@f1.com', 'approved', '4 McLaren Technology Way'),
(5, 'Fernando', 'Alonso', 'falonso', '$2y$10$wE/TfM4.jM7S25.C5oJqX.e5vT4Vq6OQ2Y0uR1N5ZtqJ7A/G9gG0q', 'fernando.a@f1.com', 'approved', '14 Aston Martin Avenue'),
(7, 'Ethan', 'Carr', 'Ethanol', '$2y$10$mTLha3iVJeZNp/jNaWMMdew/jFHJiZ0YQFJyw.knhdBDmbyzU10KS', 'ethan@gmail.com', 'approved', '0123456788');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`admin_Id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tblitem`
--
ALTER TABLE `tblitem`
  ADD PRIMARY KEY (`item_Id`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `user_ID` (`user_ID`),
  ADD KEY `item_Id` (`product_id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tblpurchasehistory`
--
ALTER TABLE `tblpurchasehistory`
  ADD PRIMARY KEY (`purchase_id`);

--
-- Indexes for table `tblsellerrequest`
--
ALTER TABLE `tblsellerrequest`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `admin_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblitem`
--
ALTER TABLE `tblitem`
  MODIFY `item_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblpurchasehistory`
--
ALTER TABLE `tblpurchasehistory`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblsellerrequest`
--
ALTER TABLE `tblsellerrequest`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblitem`
--
ALTER TABLE `tblitem`
  ADD CONSTRAINT `tblitem_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `tbluser` (`user_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD CONSTRAINT `fk_product_order` FOREIGN KEY (`product_id`) REFERENCES `tblproduct` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblorder_ibfk_1` FOREIGN KEY (`user_ID`) REFERENCES `tbluser` (`user_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
