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
-- Table structure for table `univ_rankings`
--

CREATE TABLE IF NOT EXISTS `univ_rankings` (
  `ranking` int(4) NOT NULL DEFAULT '0',
  `institution` varchar(49) DEFAULT NULL,
  `country` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `univ_rankings`
--

INSERT INTO `univ_rankings` (`ranking`, `institution`, `country`) VALUES
(0, '', ''),
(1, 'Harvard University', 'USA'),
(2, 'Massachusetts Institute of Technology', 'USA'),
(3, 'Stanford University', 'USA'),
(4, 'University of Cambridge', 'United Kingdom'),
(6, 'Princeton University', 'USA'),
(7, 'University of Oxford', 'United Kingdom'),
(8, 'Yale University', 'USA'),
(9, 'Columbia University', 'USA'),
(10, 'University of California, Berkeley', 'USA'),
(11, 'University of Chicago', 'USA'),
(12, 'Cornell University', 'USA'),
(13, 'University of Pennsylvania', 'USA'),
(14, 'University of Tokyo', 'Japan'),
(15, 'Johns Hopkins University', 'USA'),
(16, 'Swiss Federal Institute of Technology in Zurich', 'Switzerland'),
(17, 'Kyoto University', 'Japan'),
(18, 'Weizmann Institute of Science', 'Israel'),
(19, 'University of California, Los Angeles', 'USA'),
(20, 'University of California, San Diego', 'USA'),
(21, 'Rockefeller University', 'USA'),
(22, 'Hebrew University of Jerusalem', 'Israel'),
(23, 'New York University', 'USA'),
(24, 'University of California, San Francisco', 'USA'),
(25, 'University of Wisconsin–Madison', 'USA'),
(26, 'University of Illinois at Urbana–Champaign', 'USA'),
(27, 'Duke University', 'USA'),
(28, 'Imperial College London', 'United Kingdom'),
(29, 'University of Texas Southwestern Medical Center', 'USA'),
(30, 'University of Texas at Austin', 'USA'),
(31, 'University College London', 'United Kingdom'),
(32, 'Osaka University', 'Japan'),
(33, 'Northwestern University', 'USA'),
(34, 'University of Michigan, Ann Arbor', 'USA'),
(35, 'University of Toronto', 'Canada'),
(36, 'University of North Carolina at Chapel Hill', 'USA'),
(37, 'Washington University in St. Louis', 'USA'),
(38, 'University of Utah', 'USA'),
(39, 'University of Washington - Seattle', 'USA'),
(40, 'University of California, Santa Barbara', 'USA'),
(41, 'McGill University', 'Canada'),
(42, 'Purdue University, West Lafayette', 'USA'),
(43, 'Carnegie Mellon University', 'USA'),
(44, 'University of Southern California', 'USA'),
(45, 'University of California, Davis', 'USA'),
(46, 'University of Colorado Boulder', 'USA'),
(47, 'University of California, Irvine', 'USA'),
(48, 'University of Paris-Sud', 'France'),
(49, 'University of Minnesota, Twin Cities', 'USA'),
(50, 'University of Arizona', 'USA'),
(51, 'Technion – Israel Institute of Technology', 'Israel'),
(52, 'Ohio State University, Columbus', 'USA'),
(53, 'University of Rochester', 'USA'),
(54, 'École normale supérieure - Paris', 'France'),
(55, 'University of Florida', 'USA'),
(56, 'Tel Aviv University', 'Israel'),
(57, 'Rice University', 'USA'),
(58, 'Dartmouth College', 'USA'),
(59, 'Vanderbilt University', 'USA'),
(60, 'University of Edinburgh', 'United Kingdom'),
(61, 'École Polytechnique', 'France'),
(62, 'Boston University', 'USA'),
(63, 'Pierre-and-Marie-Curie University', 'France'),
(64, 'Pennsylvania State University, University Park', 'USA'),
(65, 'University of Geneva', 'Switzerland'),
(66, 'Brown University', 'USA'),
(67, 'University of British Columbia', 'Canada'),
(68, 'University of Maryland, College Park', 'USA'),
(69, 'Swiss Federal Institute of Technology in Lausanne', 'Switzerland'),
(70, 'Karolinska Institute', 'Sweden'),
(71, 'University of Pittsburgh - Pittsburgh Campus', 'USA'),
(72, 'Rutgers University-New Brunswick', 'USA'),
(73, 'Texas A&M University, College Station', 'USA'),
(74, 'Nagoya University', 'Japan'),
(75, 'Seoul National University', 'South Korea'),
(76, 'University of Manchester', 'United Kingdom'),
(77, 'Sapienza University of Rome', 'Italy'),
(78, 'Case Western Reserve University', 'USA'),
(79, 'Tohoku University', 'Japan'),
(80, 'Arizona State University', 'USA'),
(81, 'Emory University', 'USA'),
(82, 'Ruprecht Karl University of Heidelberg', 'Germany'),
(83, 'Ludwig Maximilian University of Munich', 'Germany'),
(84, 'University of Virginia', 'USA'),
(85, 'Leiden University', 'Netherlands'),
(86, 'Tufts University', 'USA'),
(87, 'Georgia Institute of Technology', 'USA'),
(88, 'University of Zurich', 'Switzerland'),
(89, 'University of Helsinki', 'Finland'),
(90, 'Technical University of Munich', 'Germany'),
(91, 'University of Oslo', 'Norway'),
(92, 'University of Queensland', 'Australia'),
(93, 'University of Copenhagen', 'Denmark'),
(94, 'University of Sydney', 'Australia'),
(95, 'Williams College', 'USA'),
(96, 'University of Texas MD Anderson Cancer Center', 'USA'),
(97, 'University of Nottingham', 'United Kingdom'),
(98, 'University of Bristol', 'United Kingdom'),
(99, 'Utrecht University', 'Netherlands'),
(100, 'Mines ParisTech', 'France'),
(101, '.Univ of Jaffa.', '.United States'),
(103, '.Univ of Jaffa.', '.United States'),
(104, '.Univ of Jaffa.', '.United States'),
(108, '.Univ of Jaffna.', '.United States'),
(109, '.Univ of Jaffna.', '.United States'),
(110, 'Univ of Jaffa', 'United States'),
(111, 'Univ of Jaffa', 'United States');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
