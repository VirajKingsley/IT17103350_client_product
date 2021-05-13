-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 02:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `numOfItems` int(11) NOT NULL,
  `totalPrice` varchar(100) NOT NULL,
  `customerId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartId`, `numOfItems`, `totalPrice`, `customerId`, `productId`, `status`) VALUES
(1, 2, '10000', 1, 1, 1),
(2, 1, '21000', 1, 4, 1),
(3, 1, '21000', 1, 5, 1),
(4, 1, '80000', 1, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerId` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerId`, `fname`, `lname`, `contact`, `username`, `password`) VALUES
(1, 'Geenuka', 'Ridmal', '0777123456', 'grc123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `fundraisers`
--

CREATE TABLE `fundraisers` (
  `fundraiserId` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fundraisers`
--

INSERT INTO `fundraisers` (`fundraiserId`, `fname`, `lname`, `contact`, `username`, `password`) VALUES
(1, 'anushka', 'indunil', '0777123456', 'aif123', '123'),
(2, 'sachin', 'adithya', '0777123456', 'saf123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productType` varchar(255) NOT NULL,
  `productPrice` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `relatedField` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sellerId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productId`, `productName`, `productType`, `productPrice`, `image`, `relatedField`, `description`, `status`, `sellerId`) VALUES
(1, 'Robot Arm', 'Robot', '5000', 'robot-arm.png', 'aaa', 'silver ring', 0, 1),
(4, 'Robot Arm', 'Robot', '21000', 'robot-arm.png', 'IT', 'efdsfvfdv', 1, 2),
(5, 'Robot Arm', 'Robot', '21000', 'robot-arm.png', 'IT', 'good product', 1, 2),
(8, 'Robot Arm', 'Robot', '60000', 'robot-arm.png', 'IT', 'high quality accurate item', 0, 1),
(9, 'Robot Arm', 'Robot', '75000', 'robot-arm.png', 'IT', 'high quality accurate item.', 1, 1),
(10, 'Mobile Robot', 'Robot', '80000', 'mobile-robot.png', 'IT', 'high quality accurate item', 1, 1),
(11, 'Robot Arm', 'Robot', '60000', 'robot-arm.png', 'IT', 'high quality accurate item', 1, 1),
(12, 'Robot Arm', 'Robot', '70000', 'robot-arm-blue.png', 'IT', 'high quality accurate item', 1, 1),
(13, 'Robot Arm', 'Robot', '60000', 'robot-arm.png', 'IT', 'high quality accurate item', 1, 1),
(14, 'Robot Arm (Yellow-01)', 'Robot', '60000', '', 'IT', 'high quality accurate item', 0, 1),
(15, 'Robot Arm (Yellow-01)', 'Robot', '80000', 'robot-arm-yellow.png', 'IT', 'high quality accurate item.', 1, 1),
(16, 'Mobile Robot 02', 'Robot', '80000', 'mobile-robot.png', 'IT', 'high quality accurate item', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `fundraiserId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `reqDescription` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`fundraiserId`, `productId`, `reqDescription`, `status`) VALUES
(1, 1, 'I would like to invest your project.', 1),
(1, 4, 'we can donate funds to your project.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `sellerId` int(11) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`sellerId`, `companyName`, `contact`, `username`, `password`) VALUES
(1, 'kc(Pvt)Ltd', '0777123456', 'kcs123', '123'),
(2, 'gr(Pvt)Ltd', '0777123456', 'grs123', '123'),
(3, 'sk(Pvt)Ltd', '0777123444', 'sks123', '123'),
(14, 'sm(Pvt)Ltd', '0777123456', 'sms123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `Cart_fk0` (`customerId`),
  ADD KEY `Cart_fk1` (`productId`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `fundraisers`
--
ALTER TABLE `fundraisers`
  ADD PRIMARY KEY (`fundraiserId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `Products_fk0` (`sellerId`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`fundraiserId`,`productId`),
  ADD KEY `Requests_fk1` (`productId`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`sellerId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fundraisers`
--
ALTER TABLE `fundraisers`
  MODIFY `fundraiserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `sellerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `Cart_fk0` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`),
  ADD CONSTRAINT `Cart_fk1` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `Products_fk0` FOREIGN KEY (`sellerId`) REFERENCES `sellers` (`sellerId`);

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `Requests_fk0` FOREIGN KEY (`fundraiserId`) REFERENCES `fundraisers` (`fundraiserId`),
  ADD CONSTRAINT `Requests_fk1` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
