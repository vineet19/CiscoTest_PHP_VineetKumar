-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 02:39 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciscotest`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `routerinfo`
-- (See below for the actual view)
--
CREATE TABLE `routerinfo` (
`id` int(11)
,`sap_id` varchar(50)
,`host_name` varchar(50)
,`loopback` varchar(50)
,`type` varchar(50)
,`mac_address` varchar(50)
,`deleted_at` datetime
,`updated_at` datetime
,`created_at` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `routers`
--

CREATE TABLE `routers` (
  `id` int(11) NOT NULL,
  `sap_id` varchar(50) DEFAULT NULL,
  `host_name` varchar(50) DEFAULT NULL,
  `loopback` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `mac_address` varchar(50) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `routers`
--

INSERT INTO `routers` (`id`, `sap_id`, `host_name`, `loopback`, `type`, `mac_address`, `deleted_at`, `updated_at`, `created_at`) VALUES
(19, 'dsfsartret43', 'fsdfsfsd', 'fsdfsafsaf', 'AG1', 'sdfsdfsf', NULL, '2020-09-23 12:33:39', '2020-09-23 12:33:39');

-- --------------------------------------------------------

--
-- Structure for view `routerinfo`
--
DROP TABLE IF EXISTS `routerinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `routerinfo`  AS  select `routers`.`id` AS `id`,`routers`.`sap_id` AS `sap_id`,`routers`.`host_name` AS `host_name`,`routers`.`loopback` AS `loopback`,`routers`.`type` AS `type`,`routers`.`mac_address` AS `mac_address`,`routers`.`deleted_at` AS `deleted_at`,`routers`.`updated_at` AS `updated_at`,`routers`.`created_at` AS `created_at` from `routers` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `routers`
--
ALTER TABLE `routers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `routers`
--
ALTER TABLE `routers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
