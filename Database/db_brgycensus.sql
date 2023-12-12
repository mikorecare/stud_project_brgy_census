-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Generation Time: Dec 09, 2023 at 08:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_brgycensus`
--
CREATE DATABASE IF NOT EXISTS `db_brgycensus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_brgycensus`;
-- --------------------------------------------------------

--
-- Table structure for table `tbl_census`
--

CREATE TABLE `tbl_census` (
  `form_id` int(11) NOT NULL,
  `refno` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `names` longtext NOT NULL,
  `present_address` longtext NOT NULL,
  `provincial_address` longtext NOT NULL,
  `civil_status` text NOT NULL,
  `sex` text NOT NULL,
  `dob` text NOT NULL,
  `place_of_birth` text NOT NULL,
  `height` text NOT NULL,
  `weight` text NOT NULL,
  `contactno` text NOT NULL,
  `religion` text NOT NULL,
  `email` text NOT NULL,
  `education_attainment` longtext NOT NULL,
  `emp_record` longtext NOT NULL,
  `house_occupants` longtext NOT NULL,
  `occupations` longtext NOT NULL,
  `total_members` int(11) NOT NULL,
  `form_date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` int(11) NOT NULL,
  `job_title` text NOT NULL,
  `create_job_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`job_id`, `job_title`, `create_job_date`) VALUES
(1, 'OTHERS', '2023-12-08 10:20:29'),
(2, 'IT-PROGRAMMER', '2023-12-08 10:20:29'),
(4, 'ACCOUNTANT', '2023-12-08 10:20:29'),
(5, 'BUSSINESSMAN', '2023-12-08 10:20:29'),
(7, 'SOFTWARE ENGINEER', '2023-12-08 10:20:29'),
(8, 'GOVERNMENT EMPLOYEE', '2023-12-08 10:20:29'),
(9, 'CONSTRUCTION', '2023-12-08 10:20:29'),
(10, 'FACTORY WORKER', '2023-12-08 10:20:29'),
(11, 'STREET SWEEPER', '2023-12-08 10:20:29'),
(12, 'GUARDS', '2023-12-08 10:20:29'),
(13, 'BANKS', '2023-12-08 10:20:29'),
(14, 'DRIVER', '2023-12-08 10:20:29'),
(15, 'VENDOR', '2023-12-08 10:20:29'),
(16, 'JANITOR', '2023-12-08 10:20:29'),
(17, 'HOUSEKEEPING', '2023-12-08 10:20:29'),
(18, 'IT', '2023-12-07 16:00:00'),
(19, 'CALL CENTER AGENT', '2023-12-08 10:20:29'),
(20, 'FASTFOOD CREW', '2023-12-08 10:20:29'),
(21, 'ENGINEER', '2023-12-08 10:20:29'),
(22, 'ARCHITECT', '2023-12-08 10:20:29'),
(23, 'SEAMAN', '2023-12-08 10:20:29'),
(24, 'BUSINESS', '2023-12-08 10:20:29'),
(25, 'ACTOR/ACTRESS', '2023-12-07 16:00:00'),
(26, 'NURSE', '2023-12-07 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `logo_id` int(11) NOT NULL,
  `path` text NOT NULL,
  `web_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`logo_id`, `path`, `web_title`) VALUES
(1, 'avatar_0.92839000 1699190373.jpg', 'WEB-BASED CENSUS FOR BARANGAY SOUTH SIGNAL WITH');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_name_change`
--

CREATE TABLE `tbl_name_change` (
  `req_id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `t_status` int(11) NOT NULL,
  `id_url` varchar(255) NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp(),
  `names` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `f_name` text NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `l_name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `password` text NOT NULL,
  `userType` int(11) NOT NULL,
  `avatar` text NOT NULL,
  `u_status` int(11) NOT NULL,
  `id_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `f_name`, `m_name`, `l_name`, `email`, `phone`, `password`, `userType`, `avatar`, `u_status`, `id_url`) VALUES
(1, 'admin', 'Admin', 'Admin', 'Admin', 'admin@gmail.com', '09234727213', '21232f297a57a5a743894a0e4a801fc3', 0, 'avatar_0.57507300 1699605675.jpg', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_census`
--
ALTER TABLE `tbl_census`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `tbl_name_change`
--
ALTER TABLE `tbl_name_change`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_census`
--
ALTER TABLE `tbl_census`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
