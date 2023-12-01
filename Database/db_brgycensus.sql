-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2023 at 05:42 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS db_brgycensus;

USE db_brgycensus;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Database: `db_brgycensus`

-- --------------------------------------------------------

-- Table structure for table `tbl_logo`

CREATE TABLE `tbl_logo` (
  `logo_id` int(11) NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  `web_title` text NOT NULL,
  PRIMARY KEY (`logo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `tbl_logo`
INSERT INTO `tbl_logo` (`logo_id`, `path`, `web_title`) VALUES
(1, 'avatar_0.36534100 1694502262.png', 'Census For Barangay South Signal With Application Of Data Analytics');

-- --------------------------------------------------------

-- Table structure for table `tbl_user`

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `password` text NOT NULL,
  `userType` int(11) NOT NULL,
  `avatar` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table `tbl_user`
INSERT INTO `tbl_user` (`user_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `userType`, `avatar`) VALUES
(1, 'admin', 'Juan', 'Dela Cruz', 'admin@gmail.com', '09234727213', '21232f297a57a5a743894a0e4a801fc3', 0, 'avatar.png'),
(17, 'vipuser', 'John ', 'Doe', 'vipuser@gmail.com', '096546453252', '918ac42ad6257642fb7ccf12519fd1d9', 1, 'avatar.png');

-- Indexes for dumped tables

-- AUTO_INCREMENT for table `tbl_logo`
ALTER TABLE `tbl_logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- AUTO_INCREMENT for table `tbl_user`
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
