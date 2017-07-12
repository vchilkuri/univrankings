-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 03, 2017 at 11:31 PM
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
-- Table structure for table `national`
--

CREATE TABLE IF NOT EXISTS `national` (
  `ranking` int(3) DEFAULT NULL,
  `national_rank` int(2) DEFAULT NULL,
  `quality_of_education` int(3) DEFAULT NULL,
  KEY `ranking` (`ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `national`
--

INSERT INTO `national` (`ranking`, `national_rank`, `quality_of_education`) VALUES
(1, 2, 7),
(2, 2, 9),
(3, 3, 17),
(4, 1, 10),
(0, 4, 2),
(6, 5, 8),
(7, 2, 13),
(8, 6, 14),
(9, 7, 23),
(10, 8, 16),
(11, 9, 15),
(12, 10, 21),
(13, 11, 31),
(14, 1, 32),
(15, 12, 34),
(16, 1, 26),
(17, 2, 42),
(18, 1, 4),
(19, 13, 62),
(20, 14, 61),
(21, 15, 1),
(22, 2, 24),
(23, 16, 89),
(24, 17, 101),
(25, 18, 64),
(26, 19, 82),
(27, 20, 65),
(28, 3, 84),
(29, 21, 19),
(30, 22, 101),
(31, 4, 35),
(32, 3, 77),
(33, 23, 101),
(34, 24, 68),
(35, 1, 101),
(36, 25, 101),
(37, 26, 74),
(38, 27, 92),
(39, 28, 101),
(40, 29, 101),
(41, 2, 70),
(42, 30, 95),
(43, 31, 30),
(44, 32, 101),
(45, 33, 79),
(46, 34, 83),
(47, 35, 101),
(48, 1, 48),
(49, 36, 101),
(50, 37, 101),
(51, 3, 45),
(52, 38, 101),
(53, 39, 41),
(54, 2, 3),
(55, 40, 101),
(56, 4, 97),
(57, 41, 28),
(58, 42, 27),
(59, 43, 80),
(60, 1, 71),
(61, 3, 47),
(62, 44, 101),
(63, 4, 54),
(64, 45, 101),
(65, 2, 46),
(66, 46, 49),
(67, 3, 101),
(68, 47, 85),
(69, 3, 101),
(70, 1, 51),
(71, 48, 81),
(72, 49, 101),
(73, 50, 101),
(74, 4, 56),
(75, 1, 101),
(76, 5, 101),
(77, 1, 101),
(78, 51, 33),
(79, 5, 53),
(80, 52, 101),
(81, 53, 101),
(82, 1, 87),
(83, 2, 90),
(84, 54, 101),
(85, 1, 88),
(86, 55, 60),
(87, 56, 101),
(88, 4, 101),
(89, 1, 96),
(90, 3, 52),
(91, 1, 101),
(92, 1, 101),
(93, 1, 101),
(94, 2, 101),
(95, 57, 18),
(96, 58, 101),
(97, 6, 101),
(98, 7, 101),
(99, 2, 100),
(100, 5, 44),
(101, 97, NULL),
(110, 97, NULL),
(103, 97, NULL),
(104, 97, NULL),
(111, 97, NULL),
(108, 97, NULL),
(109, 97, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `national`
--
ALTER TABLE `national`
  ADD CONSTRAINT `national_to_publication` FOREIGN KEY (`ranking`) REFERENCES `publication` (`ranking`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
