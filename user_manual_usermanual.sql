-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 11, 2024 at 02:12 PM
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
-- Table structure for table `user_manual_usermanual`
--

DROP TABLE IF EXISTS `user_manual_usermanual`;
CREATE TABLE IF NOT EXISTS `user_manual_usermanual` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `filename` varchar(100) NOT NULL,
  `file_type` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `filepath` varchar(400) NOT NULL,
  `sub_category_1` varchar(100) NOT NULL,
  `sub_category_2` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_manual_usermanual`
--

INSERT INTO `user_manual_usermanual` (`id`, `filename`, `file_type`, `section`, `region`, `created_at`, `updated_at`, `created_by`, `filepath`, `sub_category_1`, `sub_category_2`) VALUES
(1, 'max', 'doc', '524202', '1', '2023-10-20', '2023-10-20', 'Max', 'uploads/knowledgecentre/um/20231020013837PMpc-maintenance-checklist.pdf', '', ''),
(2, 'dan', 'realeaste', '524604', '2', '2023-10-20', '2023-10-20', 'Max', 'uploads/knowledgecentre/um/20231020013912PMnull-5.pdf', '', ''),
(3, 'Electricty Act 13:19', 'LEGISLATION', '522301', '1', '2023-11-13', '2023-11-13', 'Max', 'uploads/knowledgecentre/um/20231113033311PMoctober report.pdf', 'Electricity Acts', ''),
(4, 'dan', 'PUBLICATIONS', '524202', '2', '2023-11-17', '2023-11-17', 'Max', 'uploads/knowledgecentre/um/20231117090830AMMaxcen I Chikuwira Curriculum Vitae 1.pdf', 'drawing', 'engineering'),
(5, 'Electricty Act 13:19', 'LEGISLATION', '523001', '2', '2023-11-24', '2023-11-24', 'Max', 'uploads/knowledgecentre/um/20231124042848PM04_Sunbeam AB.pdf', 'Electricity Acts', ''),
(6, 'Commercial Guidelines', 'POLICIES & GUIDELINES', '524603', '2', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128091507AM04_Sunbeam IM.pdf', 'Commercial', ''),
(7, 'engineering', 'ENGINEERING', '524602', '3', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128095509AM05_Builder IM.pdf', '1_10', 'reports'),
(8, 'Legger', 'LEGISLATION', '524503', '4', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128124444PM05_Builder IM.pdf', 'Electricity Acts', ''),
(9, 'Electricty Act 13:19', 'LEGISLATION', '524403', '1', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128124844PM02_Early Bird AB.pdf', 'Electricty Acts', ''),
(10, 'comms', 'LEGISLATION', '524502', '1', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128125914PM2 Electrical Engineering  Students Advert .pdf', 'General Legislation', ''),
(11, 'instruments', 'LEGISLATION', '522301', '1', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128011607PM2 Electrical Engineering  Students Advert .pdf', 'Statutory Instruments', ''),
(12, 'finance doc', 'POLICIES & GUIDELINES', '525000', '3', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128022535PM2 Electrical Engineering  Students Advert .pdf', 'Commercial', ''),
(13, 'resources', 'POLICIES & GUIDELINES', '527001', '2', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128024312PM2 Electrical Engineering  Students Advert .pdf', 'Human Resources', ''),
(14, 'maxfy', 'POLICIES & GUIDELINES', '524504', '3', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128024742PM2 Electrical Engineering  Students Advert .pdf', 'Engineering', ''),
(15, 'techMinds', 'POLICIES & GUIDELINES', '527001', '2', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128031234PM2 Electrical Engineering  Students Advert .pdf', 'ICT', ''),
(16, 'public doc', 'PUBLICATIONS', '524602', '3', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128033221PM2 Electrical Engineering  Students Advert .pdf', '', ''),
(17, 'risk', 'POLICIES & GUIDELINES', '527001', '4', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128033722PM2 Electrical Engineering  Students Advert .pdf', 'Risk', ''),
(18, 'engines', 'ENGINEERING', '524202', '1', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128041839PM2 Electrical Engineering  Students Advert .pdf', '1_10', 'Reports'),
(19, 'user_m', 'USER MANUALS', '524001', '4', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128082218PM02_Early Bird AB.pdf', 'Commercial', ''),
(20, 'human_resources', 'USER MANUALS', '522102', '3', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128082343PM02_Early Bird AB.pdf', 'Human Resources', ''),
(21, 'money_hacks', 'USER MANUALS', '524301', '2', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128082551PM2 Electrical Engineering  Students Advert .pdf', 'Finance', ''),
(22, 'my_standards', 'STANDARDS, SPECIFICATIONS & DRAWINGS', '525000', '1', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128091102PM02_Early Bird AB.pdf', 'Drawings', ''),
(23, 'arts', 'STANDARDS, SPECIFICATIONS & DRAWINGS', '524502', '4', '2023-11-28', '2023-11-28', 'Max', 'uploads/knowledgecentre/um/20231128091307PM2 Electrical Engineering  Students Advert .pdf', 'Standards', ''),
(24, 'main_engines', 'ENGINEERING', '524602', '3', '2023-11-29', '2023-11-29', 'Max', 'uploads/knowledgecentre/um/20231129083551AM2 Electrical Engineering  Students Advert .pdf', '1_10', 'Reports'),
(25, 'specifics', 'STANDARDS, SPECIFICATIONS & DRAWINGS', '524101', '3', '2023-11-29', '2023-11-29', 'Max', 'uploads/knowledgecentre/um/20231129084459AM02_Early Bird AB.pdf', 'Specifications', ''),
(26, 'protect_engines', 'ENGINEERING', '521001', '3', '2023-11-29', '2023-11-29', 'Max', 'uploads/knowledgecentre/um/20231129090134AM10x30 T CHIDYAMATIYO MARZ-Model.pdf', '1_10', 'Protection'),
(27, 'transformers', 'ENGINEERING', '524603', '3', '2023-11-29', '2023-11-29', 'Max', 'uploads/knowledgecentre/um/20231129090307AM04_Sunbeam IM.pdf', '1_10', 'Transformers'),
(28, 'main_switch', 'ENGINEERING', '524504', '3', '2023-11-29', '2023-11-29', 'Max', 'uploads/knowledgecentre/um/20231129090729AM10x30 T CHIDYAMATIYO MARZ-Model.pdf', '1_10', 'Switchgear'),
(29, 'clr_distances', 'ENGINEERING', '525000', '3', '2023-11-29', '2023-11-29', 'Max', 'uploads/knowledgecentre/um/20231129095223AMarrival form.pdf', '11_20', 'Clearance Distances'),
(30, 'blue_cables', 'ENGINEERING', '524402', '1', '2023-11-29', '2023-11-29', 'Max', 'uploads/knowledgecentre/um/20231129095708AMAY Honor Christian Grooming & Manners Answer Key used by General Conference - Pathfinder Wiki.pdf', '11_20', 'Cables'),
(31, 'stations', 'ENGINEERING', '524503', '4', '2023-11-29', '2023-11-29', 'Max', 'uploads/knowledgecentre/um/20231129025043PMCooking.pdf', '21_30', 'Substations'),
(32, 'inports', 'ENGINEERING', '526001', '2', '2023-11-29', '2023-11-29', 'Max', 'uploads/knowledgecentre/um/20231129025227PMApplication_letter.pdf', '21_30', 'Transport'),
(33, 'cable_jointing', 'ENGINEERING', '525000', 'Select Region', '2023-11-29', '2023-11-29', 'Max', 'uploads/knowledgecentre/um/20231129032553PMBusy Bee Checklist.pdf', '31_45', 'Cable Jointing Laying '),
(34, 'jointings', 'ENGINEERING', '526001', '3', '2023-11-29', '2023-11-29', 'Max', 'uploads/knowledgecentre/um/20231129033347PM04_Sunbeam AB.pdf', '31_45', 'Cable Jointing Laying '),
(35, 'standards', 'ENGINEERING', '524402', '3', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130091051AM04_Sunbeam AB.pdf', '31_45', 'Standard Stock Items'),
(36, 'stations', 'ENGINEERING', '524202', '3', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130091248AM03_Busy Bee IM.pdf', '31_45', 'Power Stations'),
(37, 'switch_gear', 'USER MANUALS', '524202', '4', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130085442PM04_Sunbeam IM.pdf', 'Engineering', 'Switchgear'),
(38, 'switchs', 'USER MANUALS', '527001', '1', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130091343PM04_Sunbeam IM.pdf', 'engineering', 'Switchgear'),
(39, 'oms', 'USER MANUALS', '524101', '3', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130091503PM03_Busy Bee IM.pdf', 'engineering', 'OMS'),
(40, 'risks', 'USER MANUALS', '525000', '3', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130094258PM04_Sunbeam IM.pdf', 'commercial', 'Payment Risks'),
(41, 'payees', 'KNOWLEDGE BASE', '524402', '2', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130094425PM04_Sunbeam IM.pdf', 'commercial', 'Payment Risks'),
(42, 'payments', 'KNOWLEDGE BASE', '524602', '2', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130094551PM04_Sunbeam IM.pdf', 'Commercial', 'Payment Risks'),
(43, 'engines', 'KNOWLEDGE BASE', '527001', '4', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130100055PM04_Sunbeam IM.pdf', 'engineering', 'Maintanance'),
(44, 'reals', 'KNOWLEDGE BASE', '527001', '2', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130101211PM05_Builder AB.pdf', 'Risk', ''),
(45, 'finance', 'KNOWLEDGE BASE', '524503', '2', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130101329PM05_Builder IM.pdf', 'Finance', ''),
(46, 'users', 'KNOWLEDGE BASE', '524502', '3', '2023-11-30', '2023-11-30', 'Max', 'uploads/knowledgecentre/um/20231130102910PM04_Sunbeam IM.pdf', 'ict', 'User Support'),
(47, 'acts of service', 'LEGISLATION', '524301', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201104631AMAY Honor Camping Skills IV Answer Key - Pathfinder Wiki.pdf', 'Electricty Acts', ''),
(48, 'services', 'LEGISLATION', '524502', '1', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201105152AM04_Sunbeam IM.pdf', 'Electricity Acts', ''),
(49, 'generalization', 'LEGISLATION', '527001', '1', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201105238AM03_Busy Bee IM.pdf', 'General Legislation', ''),
(50, 'my_instruments', 'LEGISLATION', '524502', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201105341AM04_Sunbeam AB.pdf', 'Statutory Instruments', ''),
(51, 'comms', 'POLICIES & GUIDELINES', '524602', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201105444AM04_Sunbeam AB.pdf', 'Commercial', ''),
(52, 'h_resources', 'POLICIES & GUIDELINES', '524602', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201105525AMAdventist Youth _Nutrition - .PDF', 'Human Resources', ''),
(53, 'engines_facts', 'POLICIES & GUIDELINES', '526001', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201105607AM2023 Job advert edit.pdf', 'Engineering', ''),
(54, 'f_nances', 'POLICIES & GUIDELINES', '524403', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201105655AM05_Builder IM.pdf', 'Finance', ''),
(55, 'mnd', 'POLICIES & GUIDELINES', '524403', '2', '2023-12-01', '2023-12-01', 'Max', '', 'ICT', ''),
(56, 'risks_measures', 'POLICIES & GUIDELINES', '524504', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201105824AMAY Honor Camping Skills II Answer Key - Pathfinder Wiki.pdf', 'Risk', ''),
(57, 'public_finances', 'POLICIES & GUIDELINES', '525000', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201105916AMApplication Letter ZPC.pdf', '', ''),
(58, 'dan', 'PUBLICATIONS', '525000', '1', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201110004AM2023 Job advert edit.pdf', '', ''),
(59, 'reas', 'ENGINEERING', '524402', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201110450AM04_Sunbeam AB.pdf', '1_10', 'Reports'),
(60, 'pros', 'ENGINEERING', '522102', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201110533AM05_Builder AB.pdf', '1_10', 'Protection'),
(61, 'earth_moving', 'ENGINEERING', '524202', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201110632AM06_Helping_Hands IM.pdf', '1_10', 'Earthing'),
(62, 'transitions', 'ENGINEERING', '524403', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201112114AMAssignment 1-1.docx', '1_10', 'Transformers'),
(63, 'fuses', 'ENGINEERING', '524603', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201112233AM04_Sunbeam AB.pdf', '1_10', 'Fuses'),
(64, 'meters', 'ENGINEERING', '524402', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201112344AM04_Sunbeam IM.pdf', '1_10', 'Instruments, Meters and Metering'),
(65, 'gaskets', 'ENGINEERING', '524502', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201112452AM02_Early Bird IM.pdf', '1_10', 'Transformer Gaskets'),
(66, 'regulations', 'ENGINEERING', '524504', '1', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201112805AM04_Sunbeam AB.pdf', '1_10', 'Post Office Regulations'),
(67, 'insulating_oils', 'ENGINEERING', '524402', '4', '2023-12-01', '2023-12-01', 'Max', '', '1_10', 'Insulating Oils'),
(68, 'stations', 'ENGINEERING', '524101', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201113216AMBusy Bee Assessmet form (1).pdf', '1_10', 'Insulating Oils'),
(69, 'clr_dis', 'ENGINEERING', '524503', '4', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201115126AM04_Sunbeam AB.pdf', '11_20', 'Clearance Distances'),
(70, 'dprt_reg', 'ENGINEERING', '524504', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201115214AM04_Sunbeam IM.pdf', '11_20', 'Mines Department Regulations'),
(71, 'supplies', 'ENGINEERING', '524502', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201115305AM04_Sunbeam AB.pdf', '11_20', 'Interruption of supply Notice to consumers'),
(72, 'ISNC', 'ENGINEERING', '527001', '1', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201120428PM04_Sunbeam AB.pdf', '11_20', 'Interruption of Supply Notice to Consumers'),
(73, 'WSPC', 'ENGINEERING', '524503', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201120515PM05_Builder IM.pdf', '11_20', 'Water Samples and Painting to Consumers'),
(74, 'CWE', 'ENGINEERING', '524503', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201120602PM04_Sunbeam IM.pdf', '11_20', 'Capital Works and Expenditure'),
(75, 'GPW', 'ENGINEERING', '525000', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201120654PMHonor_Worksheets.pdf', '11_20', 'Government planning and Wayleaves'),
(76, 'PRC', 'ENGINEERING', '524502', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201120800PMAdventist Youth _Nutrition - .PDF', '11_20', 'Phase Rotation and Colouring'),
(77, 'IB', 'ENGINEERING', '524503', '4', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201120852PM03_Busy Bee IM.pdf', '11_20', 'Insulators and Bushings'),
(78, 'LK', 'ENGINEERING', '524503', '1', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201120934PM04_Sunbeam IM.pdf', '11_20', 'Locks and Keys'),
(79, 'RMASTS', 'ENGINEERING', '524403', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201121032PM05_Builder AB.pdf', '21_30', 'RMasts, Poles, Stays and Crossarms'),
(80, 'Fire_Fighting', 'ENGINEERING', '524602', '1', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201121321PMBusy Bee Checklist.pdf', '21_30', 'Fire Fighting'),
(81, 'DDEIG', 'ENGINEERING', '524503', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201121419PMChit South Quiz 2023.xlsx', '21_30', 'Defective and Damaged Equipment Insurance & Guarantees'),
(82, 'SSE', 'ENGINEERING', '524504', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201121501PM04_Sunbeam IM.pdf', '21_30', 'Services and Service Equipment'),
(83, 'CEI', 'ENGINEERING', '524402', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201121550PM04_Sunbeam AB.pdf', '21_30', 'Consumer\'s Equipment and installation'),
(84, 'LE', 'ENGINEERING', '524301', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201121641PM03_Busy Bee IM.pdf', '21_30', 'Lifting Equipment'),
(85, 'LPA', 'ENGINEERING', '524504', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201121723PM11-Antichrist.pdf', '21_30', 'Lighting Protection and Arrestors'),
(86, 'insulation_tapes', 'ENGINEERING', '524503', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201121826PM04_Sunbeam IM.pdf', '21_30', 'Insulation'),
(87, 'Cable _Jointing_Laying', 'ENGINEERING', '524402', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201121931PM04_Sunbeam IM.pdf', '31_45', 'Cable Jointing Laying'),
(88, 'CPFR', 'ENGINEERING', '524504', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201122009PM03_Busy Bee AB.pdf', '31_45', 'Capacitors and Power Factor Correction'),
(89, 'EM', 'ENGINEERING', '524502', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201122043PM05_Builder AB.pdf', '31_45', 'Explosive and Magazine'),
(90, 'Cradles_and_Guards', 'ENGINEERING', '524503', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201122131PM04_Sunbeam IM.pdf', '31_45', 'Cradles and Guards'),
(91, '11KVs', 'ENGINEERING', '524502', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201122225PM04_Sunbeam AB.pdf', '31_45', 'Standard 11Kv Line Construction'),
(92, 'CEA', 'ENGINEERING', '524504', '4', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201122301PM04_Sunbeam IM.pdf', '31_-45', 'Conductors, Earthwires and Accessories'),
(93, 'RRLC', 'ENGINEERING', '524504', '1', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201124009PM05_Builder AB.pdf', '31_45', 'Road, Rail, and Line Crossings'),
(94, 'Z.E.T.D.C', 'ENGINEERING', '524503', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201124245PM03_Busy Bee IM.pdf', '31_45', 'Z.E.T.D.C Regulations and Safety Precautions'),
(95, 'SB', 'Select File Type', '524503', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201124328PM04_Sunbeam IM.pdf', '31_45', 'Substation Batteries'),
(96, 'SB', 'ENGINEERING', '524502', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201125040PM04_Sunbeam IM.pdf', '31_45', 'Substation Batteries'),
(97, 'OPPS', 'ENGINEERING', '527001', '3', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201125118PM04_Sunbeam AB.pdf', '31_45', 'Safety Rules for Operation and Maintenance Switching Authorization'),
(98, 'HML', 'ENGINEERING', '526001', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201125156PM04_Sunbeam AB.pdf', '31_45', 'High Mast Lighting'),
(99, 'PPFC', 'ENGINEERING', '524402', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201125235PM2023 Job advert edit.pdf', '31_45', 'Planning Policy on Firm Capacity'),
(100, 'procurement', 'ENGINEERING', '524502', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201125322PM04_Sunbeam IM.pdf', '31_45', 'Procurement'),
(101, 'comms', 'LEGISLATION', '524301', '2', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201040826PMAmbassador-Overview-for-GC_Tejel-EUD.pdf', 'Electricty Acts', ''),
(102, 'it', 'LEGISLATION', '524503', '1', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201040918PM05_Builder AB.pdf', 'Electricty Acts', ''),
(103, 'data comms', 'LEGISLATION', '524504', '1', '2023-12-01', '2023-12-01', 'Max', 'uploads/knowledgecentre/um/20231201041031PM02_Early Bird IM.pdf', 'Electricity Acts', ''),
(104, 'ingy', 'ENGINEERING', '524101', '1', '2023-12-12', '2023-12-12', 'Max', 'uploads/knowledgecentre/um/20231212113344AM02_Early Bird AB.pdf', '1_10', 'Reports'),
(105, 'stations', '1', 'Select Section', 'Select Region', '2023-12-14', '2023-12-14', 'Max', '', '1', ''),
(106, 'xxxx', '1', '524504', '2', '2023-12-14', '2023-12-14', 'Max', 'uploads/knowledgecentre/um/20231214035400PM20231018101322AMAttachment Letter.pdf', '1', ''),
(107, 'tttt', 'LEGISLATION', '524503', '2', '2023-12-14', '2023-12-14', 'Max', 'uploads/knowledgecentre/um/20231214041051PM20231020115852AMnull-5.pdf', 'Electricity Acts', ''),
(108, 'Testing', 'ENGINEERING INSTRUCTIONS MAIN INDEX', '524403', '1', '2023-12-14', '2023-12-14', 'Max', 'uploads/knowledgecentre/um/20231214041140PM20231016100809AMcertified copies of O level and A level results.pdf', '11_20', 'Mine Department Regulations'),
(109, 'my_vids', 'LEGISLATION', '524504', '2', '2023-12-14', '2023-12-14', 'Max', 'uploads/knowledgecentre/um/20231214042121PMFirm_faith_Pasi_Rino_Rakatukwa(256k).mp3', 'Electricity Acts', ''),
(110, 'mmmm', 'ENGINEERING INSTRUCTIONS MAIN INDEX', '524402', '2', '2023-12-18', '2023-12-18', 'Max', 'uploads/knowledgecentre/um/20231218084609AMkudzai c bosha cv 1.0.pdf', '11_20', 'Mine Department Regulations'),
(111, 'prd', 'LEGISLATION', '524503', '2', '2024-01-02', '2024-01-02', 'Max', 'uploads/knowledgecentre/um/20240102113352PMmonthly report (1).pdf', 'Electricity Acts', ''),
(112, 'pxd', 'LEGISLATION', '524504', '2', '2024-01-02', '2024-01-02', 'Max', 'uploads/knowledgecentre/um/20240102114530PMnet-intro.pdf', 'Electricity Acts', ''),
(113, '', 'LEGISLATION', 'Select Section', 'Select Region', '2024-01-03', '2024-01-03', 'Max', '', 'Electricity Acts', ''),
(114, 'was', 'LEGISLATION', '524504', '1', '2024-01-03', '2024-01-03', 'Max', 'uploads/knowledgecentre/um/20240103104936AMDecember Report.pdf', 'Electricity Acts', ''),
(115, 'pxd', 'LEGISLATION', '524402', '1', '2024-01-03', '2024-01-03', 'Max', 'uploads/knowledgecentre/um/20240103113403AMDecember Report.pdf', 'Electricity Acts', ''),
(116, 'externals', '', '524503', '1', '2024-01-11', '2024-01-11', 'Max', 'uploads/knowledgecentre/um/20240111034559PMDecember Report.pdf', '', ''),
(117, 'sss', '', '524403', '2', '2024-01-11', '2024-01-11', 'Max', 'uploads/knowledgecentre/um/20240111034817PMDecember Report.pdf', '', ''),
(118, 'docs', '', '524502', '1', '2024-01-11', '2024-01-11', 'Max', 'uploads/knowledgecentre/um/20240111034843PM10 DAYS OF PRAYER 2024-10 TO 20 JANUARY 2024.pdf', '', ''),
(119, 'external_docs', 'OTHER EXTERNAL DOCUMENTS', '524602', '2', '2024-01-11', '2024-01-11', 'Max', 'uploads/knowledgecentre/um/20240111035438PMDecember Report.pdf', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
