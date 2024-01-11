-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 11, 2024 at 02:14 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beii`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_manual_first_category`
--

DROP TABLE IF EXISTS `user_manual_first_category`;
CREATE TABLE IF NOT EXISTS `user_manual_first_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `file_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_manual_first_category_file_type_id_e52f6580` (`file_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_manual_first_category`
--

INSERT INTO `user_manual_first_category` (`id`, `name`, `file_type_id`) VALUES
(1, 'Electricity Acts', 1),
(2, 'Commercial', 2),
(3, 'Human Resources', 2),
(4, 'Engineering', 2),
(5, 'Finance', 2),
(6, '1_10', 4),
(7, 'ICT', 2),
(8, 'Risk', 2),
(9, 'Statutory Instruments', 1),
(10, 'General Legislation', 1),
(28, '21_30', 4),
(12, '11_20', 4),
(13, '31_45', 4),
(14, 'Commercial', 5),
(15, 'Human Resources', 5),
(16, 'Engineering', 5),
(17, 'ICT', 5),
(18, 'Risk', 5),
(19, 'Drawings', 6),
(20, 'Standards', 6),
(21, 'Specifications', 6),
(22, 'Commercial', 7),
(23, 'Engineering', 7),
(24, 'HR', 7),
(25, 'Risk', 7),
(26, 'Finance', 7),
(27, 'ICT', 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
