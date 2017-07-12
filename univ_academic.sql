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
-- Table structure for table `univ_academic`
--

CREATE TABLE IF NOT EXISTS `univ_academic` (
  `ranking` int(3) DEFAULT NULL,
  `institution` varchar(49) DEFAULT NULL,
  `country` varchar(14) DEFAULT NULL,
  `new_publications` varchar(500) NOT NULL,
  `new_libraries` varchar(500) NOT NULL,
  `new_books` varchar(500) NOT NULL,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `univ_academic`
--

INSERT INTO `univ_academic` (`ranking`, `institution`, `country`, `new_publications`, `new_libraries`, `new_books`, `updatetime`) VALUES
(1, 'Harvard University', 'USA', '76', '3', '400', '2017-05-03 20:14:38'),
(2, 'Massachusetts Institute of Technology', 'USA', '', '', '', '2017-05-04 00:00:53'),
(3, 'Stanford University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(4, 'University of Cambridge', 'United Kingdom', '', '', '', '0000-00-00 00:00:00'),
(5, 'California Institute of Technology', 'USA', '25', '46', '98', '2017-05-03 20:11:55'),
(6, 'Princeton University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(7, 'University of Oxford', 'United Kingdom', '', '', '', '0000-00-00 00:00:00'),
(8, 'Yale University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(9, 'Columbia University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(10, 'University of California, Berkeley', 'USA', '', '', '', '0000-00-00 00:00:00'),
(11, 'University of Chicago', 'USA', '', '', '', '0000-00-00 00:00:00'),
(12, 'Cornell University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(13, 'University of Pennsylvania', 'USA', '', '', '', '2017-05-04 00:00:53'),
(14, 'University of Tokyo', 'Japan', '', '', '', '0000-00-00 00:00:00'),
(15, 'Johns Hopkins University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(16, 'Swiss Federal Institute of Technology in Zurich', 'Switzerland', '', '', '', '0000-00-00 00:00:00'),
(17, 'Kyoto University', 'Japan', '', '', '', '2017-05-04 00:00:53'),
(18, 'Weizmann Institute of Science', 'Israel', '', '', '', '0000-00-00 00:00:00'),
(19, 'University of California, Los Angeles', 'USA', '', '', '', '0000-00-00 00:00:00'),
(20, 'University of California, San Diego', 'USA', '', '', '', '0000-00-00 00:00:00'),
(21, 'Rockefeller University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(22, 'Hebrew University of Jerusalem', 'Israel', '', '', '', '2017-05-04 00:00:53'),
(23, 'New York University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(24, 'University of California, San Francisco', 'USA', '', '', '', '0000-00-00 00:00:00'),
(25, 'University of Wisconsin–Madison', 'USA', '', '', '', '0000-00-00 00:00:00'),
(26, 'University of Illinois at Urbana–Champaign', 'USA', '', '', '', '0000-00-00 00:00:00'),
(27, 'Duke University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(28, 'Imperial College London', 'United Kingdom', '', '', '', '0000-00-00 00:00:00'),
(29, 'University of Texas Southwestern Medical Center', 'USA', '', '', '', '0000-00-00 00:00:00'),
(30, 'University of Texas at Austin', 'USA', '', '', '', '0000-00-00 00:00:00'),
(31, 'University College London', 'United Kingdom', '', '', '', '0000-00-00 00:00:00'),
(32, 'Osaka University', 'Japan', '', '', '', '0000-00-00 00:00:00'),
(33, 'Northwestern University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(34, 'University of Michigan, Ann Arbor', 'USA', '', '', '', '0000-00-00 00:00:00'),
(35, 'University of Toronto', 'Canada', '', '', '', '0000-00-00 00:00:00'),
(36, 'University of North Carolina at Chapel Hill', 'USA', '', '', '', '0000-00-00 00:00:00'),
(37, 'Washington University in St. Louis', 'USA', '', '', '', '0000-00-00 00:00:00'),
(38, 'University of Utah', 'USA', '', '', '', '0000-00-00 00:00:00'),
(39, 'University of Washington - Seattle', 'USA', '', '', '', '0000-00-00 00:00:00'),
(40, 'University of California, Santa Barbara', 'USA', '', '', '', '0000-00-00 00:00:00'),
(41, 'McGill University', 'Canada', '', '', '', '0000-00-00 00:00:00'),
(42, 'Purdue University, West Lafayette', 'USA', '', '', '', '0000-00-00 00:00:00'),
(43, 'Carnegie Mellon University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(44, 'University of Southern California', 'USA', '', '', '', '0000-00-00 00:00:00'),
(45, 'University of California, Davis', 'USA', '', '', '', '0000-00-00 00:00:00'),
(46, 'University of Colorado Boulder', 'USA', '', '', '', '0000-00-00 00:00:00'),
(47, 'University of California, Irvine', 'USA', '', '', '', '0000-00-00 00:00:00'),
(48, 'University of Paris-Sud', 'France', '', '', '', '0000-00-00 00:00:00'),
(49, 'University of Minnesota, Twin Cities', 'USA', '', '', '', '0000-00-00 00:00:00'),
(50, 'University of Arizona', 'USA', '', '', '', '0000-00-00 00:00:00'),
(51, 'Technion – Israel Institute of Technology', 'Israel', '', '', '', '0000-00-00 00:00:00'),
(52, 'Ohio State University, Columbus', 'USA', '', '', '', '0000-00-00 00:00:00'),
(53, 'University of Rochester', 'USA', '', '', '', '0000-00-00 00:00:00'),
(54, 'École normale supérieure - Paris', 'France', '', '', '', '0000-00-00 00:00:00'),
(55, 'University of Florida', 'USA', '', '', '', '0000-00-00 00:00:00'),
(56, 'Tel Aviv University', 'Israel', '', '', '', '0000-00-00 00:00:00'),
(57, 'Rice University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(58, 'Dartmouth College', 'USA', '', '', '', '0000-00-00 00:00:00'),
(59, 'Vanderbilt University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(60, 'University of Edinburgh', 'United Kingdom', '', '', '', '0000-00-00 00:00:00'),
(61, 'École Polytechnique', 'France', '', '', '', '0000-00-00 00:00:00'),
(62, 'Boston University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(63, 'Pierre-and-Marie-Curie University', 'France', '', '', '', '0000-00-00 00:00:00'),
(64, 'Pennsylvania State University, University Park', 'USA', '', '', '', '0000-00-00 00:00:00'),
(65, 'University of Geneva', 'Switzerland', '', '', '', '0000-00-00 00:00:00'),
(66, 'Brown University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(67, 'University of British Columbia', 'Canada', '', '', '', '0000-00-00 00:00:00'),
(68, 'University of Maryland, College Park', 'USA', '', '', '', '0000-00-00 00:00:00'),
(69, 'Swiss Federal Institute of Technology in Lausanne', 'Switzerland', '', '', '', '0000-00-00 00:00:00'),
(70, 'Karolinska Institute', 'Sweden', '', '', '', '0000-00-00 00:00:00'),
(71, 'University of Pittsburgh - Pittsburgh Campus', 'USA', '', '', '', '0000-00-00 00:00:00'),
(72, 'Rutgers University-New Brunswick', 'USA', '', '', '', '0000-00-00 00:00:00'),
(73, 'Texas A&M University, College Station', 'USA', '', '', '', '0000-00-00 00:00:00'),
(74, 'Nagoya University', 'Japan', '', '', '', '0000-00-00 00:00:00'),
(75, 'Seoul National University', 'South Korea', '', '', '', '0000-00-00 00:00:00'),
(76, 'University of Manchester', 'United Kingdom', '', '', '', '0000-00-00 00:00:00'),
(77, 'Sapienza University of Rome', 'Italy', '', '', '', '0000-00-00 00:00:00'),
(78, 'Case Western Reserve University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(79, 'Tohoku University', 'Japan', '', '', '', '0000-00-00 00:00:00'),
(80, 'Arizona State University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(81, 'Emory University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(82, 'Ruprecht Karl University of Heidelberg', 'Germany', '', '', '', '0000-00-00 00:00:00'),
(83, 'Ludwig Maximilian University of Munich', 'Germany', '', '', '', '0000-00-00 00:00:00'),
(84, 'University of Virginia', 'USA', '', '', '', '0000-00-00 00:00:00'),
(85, 'Leiden University', 'Netherlands', '', '', '', '2017-05-03 20:19:27'),
(86, 'Tufts University', 'USA', '', '', '', '0000-00-00 00:00:00'),
(87, 'Georgia Institute of Technology', 'USA', '', '', '', '0000-00-00 00:00:00'),
(88, 'University of Zurich', 'Switzerland', '', '', '', '0000-00-00 00:00:00'),
(89, 'University of Helsinki', 'Finland', '', '', '', '0000-00-00 00:00:00'),
(90, 'Technical University of Munich', 'Germany', '', '', '', '0000-00-00 00:00:00'),
(91, 'University of Oslo', 'Norway', '', '', '', '0000-00-00 00:00:00'),
(92, 'University of Queensland', 'Australia', '', '', '', '0000-00-00 00:00:00'),
(93, 'University of Copenhagen', 'Denmark', '', '', '', '0000-00-00 00:00:00'),
(94, 'University of Sydney', 'Australia', '', '', '', '0000-00-00 00:00:00'),
(95, 'Williams College', 'USA', '', '', '', '0000-00-00 00:00:00'),
(96, 'University of Texas MD Anderson Cancer Center', 'USA', '', '', '', '0000-00-00 00:00:00'),
(97, 'University of Nottingham', 'United Kingdom', '', '', '', '0000-00-00 00:00:00'),
(98, 'University of Bristol', 'United Kingdom', '', '', '', '0000-00-00 00:00:00'),
(99, 'Utrecht University', 'Netherlands', '', '', '', '0000-00-00 00:00:00'),
(100, 'Mines ParisTech', 'France', '', '', '', '0000-00-00 00:00:00'),
(102, '.Univ of Jaffa.', '.United States', '', '', '', '0000-00-00 00:00:00'),
(103, '.Univ of Jaffa.', '.United States', '', '', '', '2017-05-03 17:08:40'),
(104, '.Univ of Jaffa.', '.United States', '', '', '', '2017-05-03 17:08:40'),
(105, '.Univ of Jaffa.', '.United States', '105', '2', '25', '2017-05-03 20:11:24'),
(109, '.Univ of Jaffna.', '.United States', '', '', '', '2017-05-03 19:15:42');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
