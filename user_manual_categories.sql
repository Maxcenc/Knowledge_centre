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
-- Table structure for table `user_manual_categories`
--

DROP TABLE IF EXISTS `user_manual_categories`;
CREATE TABLE IF NOT EXISTS `user_manual_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file_type` varchar(100) NOT NULL,
  `cat_1` varchar(100) NOT NULL,
  `cat_2` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_manual_categories`
--

INSERT INTO `user_manual_categories` (`id`, `file_type`, `cat_1`, `cat_2`) VALUES
(1, 'Legislation', 'Electricity Acts', ''),
(2, 'Legislation', 'General Legislation', ''),
(20, 'PUBLICATIONS', '', ''),
(4, 'Legislation', 'Statutory Instruments', ''),
(6, 'POLICIES & GUIDELINES', 'Commercial', ''),
(7, 'POLICIES & GUIDELINES', 'Human Resources', ''),
(8, 'POLICIES & GUIDELINES', 'Engineering', ''),
(9, 'POLICIES & GUIDELINES', 'Finance', ''),
(88, 'KNOWLEDGE BASE', 'Commercial', 'Client Interaction Risks'),
(11, 'POLICIES & GUIDELINES', 'ICT', ''),
(12, 'POLICIES & GUIDELINES', 'Commercial', ''),
(13, 'POLICIES & GUIDELINES', 'Risk', ''),
(14, 'POLICIES & GUIDELINES', 'Human Resources', ''),
(15, 'POLICIES & GUIDELINES', 'Engineering', ''),
(16, 'POLICIES & GUIDELINES', 'Finance', ''),
(17, 'POLICIES & GUIDELINES', 'ICT', ''),
(18, 'POLICIES & GUIDELINES', 'Risk', ''),
(22, 'ENGINEERING', '1_10', 'Reports'),
(23, 'ENGINEERING', '1_10', 'Protection'),
(24, 'ENGINEERING', '1_10', 'Earthing'),
(25, 'ENGINEERING', '1_10', 'Transformers'),
(26, 'ENGINEERING', '1_10', 'Fuses'),
(27, 'ENGINEERING', '1_10', 'Instruments, Meters and Metering'),
(28, 'ENGINEERING', '1_10', 'Transformer Gaskets'),
(29, 'ENGINEERING', '1_10', 'Switchgear'),
(30, 'ENGINEERING', '1_10', 'Post Office Regulations'),
(31, 'ENGINEERING', '1_10', 'Insulating Oils'),
(33, 'ENGINEERING', '11_20', 'Clearance Distances'),
(34, 'ENGINEERING', '11_20', 'Mine Department Regulations'),
(35, 'ENGINEERING', '11_20', 'Interruption of Supply Notice to Consumers'),
(36, 'ENGINEERING', '11_20', 'Water Samples and Painting to Consumers'),
(37, 'ENGINEERING', '11_20', 'Cables'),
(38, 'ENGINEERING', '11_20', 'Capital Works and Expenditure '),
(39, 'ENGINEERING', '11_20', 'Government planning and Wayleaves'),
(40, 'ENGINEERING', '11_20', 'Phase Rotation and Colouring'),
(41, 'ENGINEERING', '11_20', 'Insulators and Bushings'),
(42, 'ENGINEERING', '11_20', 'Locks and Keys'),
(44, 'ENGINEERING', '21_30', 'RMasts, Poles, Stays and Crossarms'),
(45, 'ENGINEERING', '21_30', 'Substations'),
(46, 'ENGINEERING', '21_30', 'Fire Fighting'),
(47, 'ENGINEERING', '21_30', 'Defective and Damaged Equipment Insurance & Guarantees'),
(48, 'ENGINEERING', '21_30', 'Services and Service Equipment'),
(49, 'ENGINEERING', '21_30', 'Consumer\'s Equipment and installation'),
(50, 'ENGINEERING', '21_30', 'Lifting Equipment'),
(51, 'ENGINEERING', '21_30', 'Transport'),
(52, 'ENGINEERING', '21_30', 'Lighting Protection and Arrestors'),
(53, 'ENGINEERING', '21_30', 'Insulation'),
(55, 'ENGINEERING', '31_45', 'Cable Jointing Laying'),
(56, 'ENGINEERING', '31_45', 'Capacitors and Power Factor Correction'),
(57, 'ENGINEERING', '31_45', 'Explosive and Magazine'),
(58, 'ENGINEERING', '31_45', 'Standard Stock Items'),
(59, 'ENGINEERING', '31_45', 'Cradles and Guards'),
(60, 'ENGINEERING', '31_45', 'Standard 11Kv Line Construction'),
(61, 'ENGINEERING', '31_45', 'Conductors, Earthwires and Accessories'),
(62, 'ENGINEERING', '31_45', 'Road, Rail, and Line Crossings'),
(63, 'ENGINEERING', '31_45', 'Z.E.T.D.C Regulations and Safety Precautions'),
(64, 'ENGINEERING', '31_45', 'Power Stations'),
(65, 'ENGINEERING', '31_45', 'Substation Batteries'),
(66, 'ENGINEERING', '31_45', 'Safety Rules for Operation and Maintenance Switching Authorization'),
(67, 'ENGINEERING', '31_45', 'High Mast Lighting'),
(68, 'ENGINEERING', '31_45', 'Planning Policy on Firm Capacity'),
(69, 'ENGINEERING', '31_45', 'Procurement'),
(71, 'USER MANUALS', 'Commercial', ''),
(72, 'USER MANUALS', 'Human Resources', ''),
(73, 'USER MANUALS', 'Engineering', 'Switchgear'),
(74, 'USER MANUALS', 'Engineering', 'Drone Technology'),
(75, 'USER MANUALS', 'Engineering', 'NDM'),
(76, 'USER MANUALS', 'Engineering', 'GIS'),
(77, 'USER MANUALS', 'Engineering', 'iTrack Zimbabwe Geotrack Connect Manual'),
(78, 'USER MANUALS', 'Engineering', 'SAP'),
(79, 'USER MANUALS', 'Engineering', 'OMS'),
(80, 'USER MANUALS', 'Finance', ''),
(81, 'USER MANUALS', 'ICT', ''),
(82, 'USER MANUALS', 'Risk', ''),
(84, 'STANDARDS, SPECIFICATIONS & DRWAINGS', 'Drawings', ''),
(85, 'STANDARDS, SPECIFICATIONS & DRWAINGS', 'Standards', ''),
(86, 'STANDARDS, SPECIFICATIONS & DRWAINGS', 'Specifications', ''),
(89, 'KNOWLEDGE BASE', 'Commercial', 'Payment Risks'),
(90, 'KNOWLEDGE BASE', 'Commercial', 'Revenue Assurance Risks'),
(91, 'KNOWLEDGE BASE', 'Engineering', 'Maintanance'),
(92, 'KNOWLEDGE BASE', 'Engineering', 'Drone Technology'),
(93, 'KNOWLEDGE BASE', 'HR', ''),
(94, 'KNOWLEDGE BASE', 'Risk', ''),
(95, 'KNOWLEDGE BASE', 'Finance', ''),
(96, 'KNOWLEDGE BASE', 'ICT', 'User Support'),
(97, 'KNOWLEDGE BASE', 'ICT', 'Network Support'),
(98, 'KNOWLEDGE BASE', 'ICT', 'ICT Audit'),
(99, 'KNOWLEDGE BASE', 'ICT', 'Trending Technologies');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
