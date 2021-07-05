-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 05:04 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `accNo` varchar(255) NOT NULL,
  `accType` varchar(255) DEFAULT NULL,
  `citizenship` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `currentBalance` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`accNo`, `accType`, `citizenship`, `cname`, `currentBalance`, `email`) VALUES
('1', 'Personal', 'Albanian', 'Fatmir', 98760, 'fatmirkondi@unyt.edu.al'),
('2', 'Personal', 'Albanian', 'Deni', 101240, 'deni@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `amount` int(11) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `recipientAccountNum` varchar(255) DEFAULT NULL,
  `recipientName` varchar(255) DEFAULT NULL,
  `senderAccountNum` varchar(255) DEFAULT NULL,
  `senderName` varchar(255) DEFAULT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`amount`, `msg`, `recipientAccountNum`, `recipientName`, `senderAccountNum`, `senderName`, `tid`) VALUES
(100, 'test', '1', 'Fatmir', '2', 'Deni', 1),
(200, 'test2', '2', 'Deni', '1', 'Fatmir', 2),
(1000, 'test3', '2', 'Deni', '1', 'Fatmir', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`accNo`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
