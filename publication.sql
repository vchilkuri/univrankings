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
-- Table structure for table `publication`
--

CREATE TABLE IF NOT EXISTS `publication` (
  `ranking` int(3) DEFAULT NULL,
  `publications` int(3) DEFAULT NULL,
  `citations` int(3) DEFAULT NULL,
  KEY `ranking` (`ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`ranking`, `publications`, `citations`) VALUES
(1, 105, 1),
(2, 12, 4),
(3, 4, 2),
(4, 16, 11),
(0, 37, 22),
(6, 53, 26),
(7, 15, 19),
(8, 14, 15),
(9, 13, 14),
(10, 6, 3),
(11, 34, 28),
(12, 22, 16),
(13, 9, 8),
(14, 8, 23),
(15, 11, 9),
(16, 40, 44),
(17, 25, 43),
(18, 101, 101),
(19, 3, 6),
(20, 10, 10),
(21, 101, 96),
(22, 101, 101),
(23, 42, 34),
(24, 19, 13),
(25, 17, 21),
(26, 35, 39),
(27, 20, 12),
(28, 26, 29),
(29, 101, 84),
(30, 41, 40),
(31, 27, 33),
(32, 39, 51),
(33, 24, 20),
(34, 2, 7),
(35, 7, 18),
(36, 31, 31),
(37, 32, 30),
(38, 74, 67),
(39, 5, 5),
(40, 68, 36),
(41, 33, 47),
(42, 61, 58),
(43, 101, 61),
(44, 46, 32),
(45, 23, 25),
(46, 71, 56),
(47, 59, 52),
(48, 73, 101),
(49, 18, 17),
(50, 45, 45),
(51, 101, 101),
(52, 30, 35),
(53, 82, 54),
(54, 101, 101),
(55, 29, 42),
(56, 72, 101),
(57, 101, 53),
(58, 101, 101),
(59, 50, 49),
(60, 64, 70),
(61, 101, 101),
(62, 48, 37),
(63, 36, 78),
(64, 38, 27),
(65, 101, 101),
(66, 101, 92),
(67, 28, 48),
(68, 47, 41),
(69, 101, 101),
(70, 84, 95),
(71, 21, 24),
(72, 80, 72),
(73, 58, 80),
(74, 101, 101),
(75, 44, 69),
(76, 52, 63),
(77, 70, 101),
(78, 96, 65),
(79, 49, 67),
(80, 101, 77),
(81, 54, 50),
(82, 86, 100),
(83, 60, 62),
(84, 76, 57),
(85, 81, 101),
(86, 101, 75),
(87, 79, 46),
(88, 101, 99),
(89, 62, 54),
(90, 91, 94),
(91, 101, 101),
(92, 67, 89),
(93, 85, 101),
(94, 56, 85),
(95, 101, 101),
(96, 95, 66),
(97, 101, 101),
(98, 75, 86),
(99, 65, 60),
(100, 101, 101),
(101, 85, NULL),
(110, 85, NULL),
(103, 85, NULL),
(104, 85, NULL),
(111, 85, NULL),
(108, 85, NULL),
(109, 85, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `publication_to_scores` FOREIGN KEY (`ranking`) REFERENCES `scores` (`ranking`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
