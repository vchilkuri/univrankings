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
-- Table structure for table `enrollment`
--

CREATE TABLE IF NOT EXISTS `enrollment` (
  `ranking` int(3) DEFAULT NULL,
  `international` varchar(3) DEFAULT NULL,
  `enrollment` varchar(6) DEFAULT NULL,
  `sex_ratio` varchar(10) DEFAULT NULL,
  KEY `ranking` (`ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`ranking`, `international`, `enrollment`, `sex_ratio`) VALUES
(1, '72.', '15,660', '60:40'),
(2, '54.', '2,243', '33 : 67'),
(3, '82.', '11,074', '37 : 63'),
(4, '29.', '15,596', '42:58:00'),
(0, '70.', '7,929', '45:55:00'),
(6, '77.', '18,812', '46:54:00'),
(7, '77.', '19,919', '46:54:00'),
(8, '39.', '36,186', '50:50:00'),
(9, '90', '15,060', '37 : 63'),
(10, '59.', '11,751', '50:50:00'),
(11, '48.', '38,206', '52:48:00'),
(12, '62.', '14,221', '42:58:00'),
(13, '58.', '15,128', '50:50:00'),
(14, '62.', '21,424', '48:52:00'),
(15, '93.', '18,178', '31 : 69'),
(16, '53.', '41,786', '48:52:00'),
(17, '-', '66,198', ''),
(18, '90.', '25,055', ''),
(19, '32.', '20,376', '51:49:00'),
(20, '39.', '11,885', '39 : 61'),
(21, '91.', '19,835', '53:47:00'),
(22, '90.', '26,607', '56:44:00'),
(23, '49', '44,020', '53:47:00'),
(24, '49.', '15,172', '49:51:00'),
(25, '60.', '18,334', '48:52:00'),
(26, '18.', '26,199', ''),
(27, '73.', '19,967', '31 : 69'),
(28, '32.', '3,055', '0.88888888'),
(29, '64.', '22,020', '52:48:00'),
(30, '93.', '50,152', '54:46:00'),
(31, '21.', '26,518', '58:42:00'),
(32, '31.', '27,233', '48:52:00'),
(33, '55.', '42,727', '47:53:00'),
(34, '97.', '31,592', '49:51:00'),
(35, '85.', '31,326', '56:44:00'),
(36, '88', '40,128', '55:45:00'),
(37, '68.', '40,148', ''),
(38, '56.', '12,528', ''),
(39, '77.', '2,429', '0.80694444'),
(40, '67.', '25,774', '58:42:00'),
(41, '97.', '11,385', ''),
(42, '44.', '2,400', '46:54:00'),
(43, '93.', '14,604', '52:48:00'),
(44, '-', '7,774', '70:30:00'),
(45, '44.', '25,581', '51:49:00'),
(46, '43.', '', ''),
(47, '31.', '6,333', '44:56:00'),
(48, '100', '9,666', '27 : 73'),
(49, '66.', '26,614', '52:48:00'),
(50, '-', '14,290', ''),
(51, '22.', '12,161', '52:48:00'),
(52, '23', '46,825', '52:48:00'),
(53, '28.', '10,410', '54:46:00'),
(54, '60.', '35,364', '54:46:00'),
(55, '60.', '8,653', ''),
(56, '22.', '56,959', '49:51:00'),
(57, '18.', '22,809', ''),
(58, '43', '39,763', '32 : 68'),
(59, '38.', '24,789', '58:42:00'),
(60, '31.', '42,056', '55:45:00'),
(61, '52.', '12,338', '56:44:00'),
(62, '43.', '35,691', '62:38:00'),
(63, '35.', '11,829', '44:56:00'),
(64, '25.', '26,485', '51:49:00'),
(65, '56.', '9,259', '48:52:00'),
(66, '64', '51,462', '49:51:00'),
(67, '31.', '29,325', '45:55:00'),
(68, '67.', '17,906', '53:47:00'),
(69, '16.', '17,404', '53:47:00'),
(70, '53.', '6,753', '53:47:00'),
(71, '89.', '41,868', '57:43:00'),
(72, '42.', '23,845', '52:48:00'),
(73, '87.', '20,771', '48:52:00'),
(74, '31.', '36,534', '52:48:00'),
(75, '20.', '7,867', '54:46:00'),
(76, '84.', '15,521', '57:43:00'),
(77, '85.', '21,394', '61:39:00'),
(78, '52.', '21,908', '50:50:00'),
(79, '36.', '9,027', '0.88888888'),
(80, '72.', '12,001', '54:46:00'),
(81, '74.', '34,718', '53:47:00'),
(82, '66.', '', ''),
(83, '63.', '28,881', '55:45:00'),
(84, '22.', '25,674', '45:55:00'),
(85, '65.', '15,489', '54:46:00'),
(86, '99.', '', ''),
(87, '79.', '34,938', '52:48:00'),
(88, '92.', '8,747', '57:43:00'),
(89, '56.', '28,251', ''),
(90, '69', '20,925', '53:47:00'),
(91, '87.', '26,583', '57:43:00'),
(92, '24.', '7,326', '51:49:00'),
(93, '-', '23,823', '53:47:00'),
(94, '87', '22,193', ''),
(95, '39.', '20,541', '56:44:00'),
(96, '21.', '36,429', '52:48:00'),
(97, '91.', '12,551', '54:46:00'),
(98, '35.', '31,331', '48:52:00'),
(99, '31', '6,178', '47:53:00'),
(100, '37.', '2,218', '49:51:00'),
(101, NULL, '.15600', '.60:40.'),
(110, NULL, '.15600', '.60:40.'),
(103, NULL, '.15600', '.60:40.'),
(104, NULL, '.15600', '.60:40.'),
(111, NULL, '.15600', '.60:40.'),
(108, NULL, '.15600', '.60:40.'),
(109, NULL, '.15600', '.60:40.');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_to_national` FOREIGN KEY (`ranking`) REFERENCES `national` (`ranking`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
