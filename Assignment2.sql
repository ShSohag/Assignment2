-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2019 at 12:34 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `task_list`
--

CREATE TABLE `task_list` (
  `productId` int(11) NOT NULL,
  `productTitle` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `weight` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_list`
--

INSERT INTO `task_list` (`productId`, `productTitle`, `description`, `weight`) VALUES
(1, 'Tometu', 'Fresh', '5000'),
(3, 'Begun', 'valo', '15'),
(5, 'Potol', 'Mota', '1000'),
(6, 'mango', 'Paka', '40');

-- --------------------------------------------------------

--
-- Table structure for table `task_list_done`
--

CREATE TABLE `task_list_done` (
  `productId` int(250) NOT NULL,
  `productTitle` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `weight` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_list_done`
--

INSERT INTO `task_list_done` (`productId`, `productTitle`, `description`, `weight`) VALUES
(9, 'a', 'a', 1),
(10, 'b', 'b', 5),
(11, 'c', 'c', 10),
(12, 'd', 'd', 5),
(13, 'e', 'e', 10),
(14, 'f', 'f', 5),
(15, 'jam', 'kalo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `password`) VALUES
(1, 'milon', '2bbdb8eaf7e83fcae733cf36fa674cf5'),
(2, 'nisi', '41868eeb2fe509f484b6fbff817109fd'),
(3, 'mili', '76681a82dd1c41a61bf1d3fbcf20b608');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `task_list`
--
ALTER TABLE `task_list`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `task_list_done`
--
ALTER TABLE `task_list_done`
  ADD PRIMARY KEY (`productId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `task_list`
--
ALTER TABLE `task_list`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
