-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 03, 2017 at 11:32 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vchilkur_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_activity`
--

CREATE TABLE IF NOT EXISTS `users_activity` (
  `sql_user` varchar(500) NOT NULL,
  `user_id` int(10) NOT NULL,
  `time_now` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_activity`
--

INSERT INTO `users_activity` (`sql_user`, `user_id`, `time_now`) VALUES
('', 0, '2017-05-04 00:00:53'),
('', 0, '2017-05-04 00:00:53'),
('', 0, '2017-05-04 00:00:53'),
('', 0, '2017-05-04 00:00:53'),
('', 0, '2017-05-04 00:00:53'),
('', 5, '2017-05-04 00:00:53'),
('', 5, '2017-05-04 00:00:53'),
('', 5, '2017-05-04 00:00:53'),
('UPDATE univ_academic SET new_publications= 63 ,new_libraries=96, new_books=324 WHERE ranking = 105', 5, '2017-05-03 16:34:12'),
('', 5, '2017-05-04 00:00:53'),
('', 5, '2017-05-04 00:00:53'),
('', 7, '2017-05-04 00:00:53'),
('', 7, '2017-05-04 00:00:53'),
('', 7, '2017-05-04 00:00:53'),
('', 7, '2017-05-04 00:00:53');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
