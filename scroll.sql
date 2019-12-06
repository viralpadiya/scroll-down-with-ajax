-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2019 at 08:20 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id_image` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id_image`, `id_post`, `image_name`) VALUES
(1, 1, 'download - Copy (2).jpg'),
(2, 1, 'download - Copy (2).jpg'),
(4, 1, 'download - Copy (2).jpg'),
(5, 1, 'download - Copy (2).jpg'),
(6, 1, 'download - Copy (2).jpg'),
(7, 1, 'download - Copy (2).jpg'),
(8, 1, 'download - Copy (2).jpg'),
(9, 1, 'download - Copy (2).jpg'),
(10, 1, 'download - Copy (2).jpg'),
(11, 1, 'download - Copy (2).jpg'),
(12, 1, 'download - Copy (2).jpg'),
(13, 1, 'download - Copy (2).jpg'),
(14, 1, 'download - Copy (2).jpg'),
(15, 1, 'download - Copy (2).jpg'),
(16, 1, 'download - Copy (2).jpg'),
(17, 1, 'download - Copy (2).jpg'),
(18, 1, 'download - Copy (2).jpg'),
(19, 1, 'download - Copy (2).jpg'),
(20, 1, 'download - Copy (2).jpg'),
(21, 1, 'download - Copy (2).jpg'),
(22, 1, 'download - Copy (2).jpg'),
(23, 1, 'download - Copy (2).jpg'),
(24, 1, 'download - Copy (2).jpg'),
(25, 1, 'download - Copy (2).jpg'),
(26, 1, 'download - Copy (2).jpg'),
(27, 1, 'download - Copy (2).jpg'),
(28, 1, 'download - Copy (2).jpg'),
(29, 1, 'download - Copy (2).jpg'),
(30, 1, 'download - Copy (2).jpg'),
(31, 1, 'download - Copy (2).jpg'),
(32, 1, 'download - Copy (2).jpg'),
(33, 1, 'download - Copy (2).jpg'),
(34, 1, 'download - Copy (2).jpg'),
(35, 1, 'download - Copy (2).jpg'),
(36, 1, 'download - Copy (2).jpg'),
(37, 1, 'download - Copy (2).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `created`, `modified`, `status`) VALUES
(1, 'dbhhdh', '2019-09-02 00:00:00', '0000-00-00 00:00:00', '1'),
(2, 'ddddd', '2019-09-10 00:00:00', '0000-00-00 00:00:00', '1'),
(3, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:04:13', '1'),
(4, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:04:13', '1'),
(5, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:04:19', '1'),
(6, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:04:19', '1'),
(7, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:04:25', '1'),
(8, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:04:25', '1'),
(9, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:04:30', '1'),
(10, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:04:30', '1'),
(11, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:04:35', '1'),
(12, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:04:35', '1'),
(13, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:04:41', '1'),
(14, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:04:41', '1'),
(15, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:04:50', '1'),
(16, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:04:50', '1'),
(17, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:05:29', '1'),
(18, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:05:29', '1'),
(19, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:05:29', '1'),
(20, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:05:29', '1'),
(21, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:05:29', '1'),
(22, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:05:29', '1'),
(23, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:05:29', '1'),
(24, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:05:29', '1'),
(25, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:05:29', '1'),
(26, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:05:29', '1'),
(27, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:05:29', '1'),
(28, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:05:29', '1'),
(29, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:05:29', '1'),
(30, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:05:29', '1'),
(31, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:05:29', '1'),
(32, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:05:29', '1'),
(33, 'sssss', '2019-09-04 00:00:00', '2019-09-18 11:05:29', '1'),
(34, 'ssss', '2019-09-19 00:00:00', '2019-09-18 11:05:29', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
