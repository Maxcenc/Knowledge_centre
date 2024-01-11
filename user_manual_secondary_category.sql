-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 11, 2024 at 02:13 PM
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
-- Table structure for table `user_manual_secondary_category`
--

DROP TABLE IF EXISTS `user_manual_secondary_category`;
CREATE TABLE IF NOT EXISTS `user_manual_secondary_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `category_id` bigint NOT NULL,
  `file_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_manual_secondary_category_category_id_b63280cf` (`category_id`),
  KEY `user_manual_secondary_category_file_id_1fd1e184` (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_manual_secondary_category`
--

INSERT INTO `user_manual_secondary_category` (`id`, `name`, `category_id`, `file_id`) VALUES
(1, 'Client Interaction Risks', 22, 7),
(2, 'Reports', 6, 4),
(3, 'Protection', 6, 4),
(4, 'Earthing', 6, 4),
(5, 'Transformers', 6, 4),
(6, 'Fuses', 6, 4),
(7, 'Instruments, Meters and Metering', 6, 4),
(8, 'Transformer Gaskets', 6, 4),
(9, 'Switchgear', 6, 4),
(10, 'Post Office Regulations', 6, 4),
(11, 'Insulating Oils', 6, 4),
(13, 'Mine Department Regulations', 12, 4),
(14, 'Interruption of Supply Notice to Consumers', 12, 4),
(15, 'Water Samples and Painting to Consumers', 12, 4),
(16, 'Cables', 12, 4),
(17, 'Capital Works and Expenditure', 12, 4),
(18, 'Government planning and Wayleaves', 12, 4),
(19, 'Phase Rotation and Colouring', 12, 4),
(20, 'Insulators and Bushings', 12, 4),
(21, 'Locks and Keys', 12, 4),
(22, 'Locks and Keys', 12, 4),
(23, 'Cable Jointing Laying', 13, 4),
(24, 'Fire Fighting', 13, 4),
(25, 'Substations', 28, 4),
(26, 'Services and Service Equipment', 28, 4),
(27, 'Consumer\'s Equipment and installation', 28, 4),
(28, 'Lifting Equipment', 28, 4),
(29, 'Transport', 28, 4),
(30, 'Lighting Protection and Arrestors', 28, 4),
(31, 'Transport', 28, 4),
(32, 'Insulation', 28, 4),
(33, 'Capacitors and Power Factor Correction', 13, 4),
(34, 'Explosive and Magazine', 13, 4),
(35, 'Standard Stock Items', 13, 4),
(36, 'Cradles and Guards', 13, 4),
(37, 'Standard 11Kv Line Construction', 13, 4),
(38, 'Conductors, Earthwires and Accessories', 13, 4),
(39, 'Conductors, Earthwires and Accessories', 13, 4),
(40, 'Road, Rail, and Line Crossings', 13, 4),
(41, 'Z.E.T.D.C Regulations and Safety Precautions', 13, 4),
(42, 'Power Stations', 13, 4),
(43, 'Substation Batteries', 13, 4),
(44, 'Power Stations', 13, 4),
(46, 'Switchgear', 23, 5),
(47, 'Drone Technology', 16, 5),
(48, 'NDM', 16, 5),
(49, 'GIS', 16, 5),
(50, 'iTrack Zimbabwe Geotrack Connect Manual', 16, 5),
(51, 'SAP', 16, 5),
(52, 'OMS', 16, 5),
(53, 'Payment Risks', 22, 7),
(54, 'Revenue Assurance Risks', 22, 7),
(55, 'Maintanance', 23, 7),
(56, 'Drone Technology', 23, 7),
(57, 'User Support', 27, 7),
(58, 'Network Support', 27, 7),
(59, 'ICT Audit', 27, 7),
(60, 'Trending Technologies', 27, 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
