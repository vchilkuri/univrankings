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
-- Table structure for table `scores`
--

CREATE TABLE IF NOT EXISTS `scores` (
  `ranking` int(3) DEFAULT NULL,
  `score` decimal(4,2) DEFAULT NULL,
  KEY `ranking` (`ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`ranking`, `score`) VALUES
(1, 99.82),
(2, 91.67),
(3, 89.50),
(4, 86.17),
(0, 85.21),
(6, 82.50),
(7, 82.34),
(8, 79.14),
(9, 78.86),
(10, 78.55),
(11, 73.82),
(12, 73.69),
(13, 73.64),
(14, 69.49),
(15, 66.94),
(16, 66.69),
(17, 65.76),
(18, 65.09),
(19, 64.05),
(20, 63.11),
(21, 61.74),
(22, 60.76),
(23, 60.55),
(24, 59.70),
(25, 59.66),
(26, 59.00),
(27, 58.37),
(28, 57.53),
(29, 56.43),
(30, 56.18),
(31, 55.21),
(32, 54.43),
(33, 54.40),
(34, 53.72),
(35, 53.43),
(36, 53.09),
(37, 52.90),
(38, 52.64),
(39, 52.25),
(40, 52.15),
(41, 51.72),
(42, 51.66),
(43, 51.60),
(44, 51.38),
(45, 51.06),
(46, 50.68),
(47, 50.64),
(48, 50.44),
(49, 50.30),
(50, 50.29),
(51, 50.01),
(52, 49.54),
(53, 49.51),
(54, 49.10),
(55, 48.80),
(56, 48.76),
(57, 48.76),
(58, 48.50),
(59, 48.44),
(60, 48.43),
(61, 48.33),
(62, 48.31),
(63, 48.26),
(64, 48.15),
(65, 47.94),
(66, 47.91),
(67, 47.74),
(68, 47.69),
(69, 47.68),
(70, 47.61),
(71, 47.59),
(72, 47.50),
(73, 47.31),
(74, 46.89),
(75, 46.74),
(76, 46.38),
(77, 46.34),
(78, 46.11),
(79, 45.82),
(80, 45.70),
(81, 45.47),
(82, 45.33),
(83, 45.21),
(84, 45.20),
(85, 45.13),
(86, 44.91),
(87, 44.71),
(88, 44.51),
(89, 44.44),
(90, 44.32),
(91, 44.26),
(92, 44.18),
(93, 44.15),
(94, 44.13),
(95, 43.89),
(96, 43.88),
(97, 43.79),
(98, 43.77),
(99, 43.47),
(100, 43.36),
(101, 0.65),
(110, 0.65),
(103, 0.65),
(104, 0.65),
(111, 65.60),
(108, 0.65),
(109, 0.65);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_to_univrankings` FOREIGN KEY (`ranking`) REFERENCES `univ_rankings` (`ranking`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
