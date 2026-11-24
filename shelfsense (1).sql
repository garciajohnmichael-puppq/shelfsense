-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2026 at 04:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shelfsense`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `ai_book_content`
-- (See below for the actual view)
--
CREATE TABLE `ai_book_content` (
`id` int(10) unsigned
,`title` varchar(255)
,`author` varchar(255)
,`description` text
,`genre` varchar(100)
,`subject_headings` text
,`keywords` text
,`category` varchar(50)
,`category_name` varchar(100)
,`subcategory_key` varchar(80)
,`subcategory_name` varchar(120)
);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `description_source` varchar(255) DEFAULT NULL,
  `description_status` enum('draft','reviewed','approved') NOT NULL DEFAULT 'draft',
  `isbn` varchar(20) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `edition` varchar(100) DEFAULT NULL,
  `pub_year` varchar(10) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `pages` int(10) UNSIGNED DEFAULT NULL,
  `format` varchar(50) DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `subcategory_key` varchar(80) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `subject_headings` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `call_number` varchar(100) DEFAULT NULL,
  `accession` varchar(100) DEFAULT NULL,
  `barcode` varchar(100) DEFAULT NULL,
  `section` varchar(100) DEFAULT NULL,
  `room` varchar(100) DEFAULT NULL,
  `shelf` varchar(100) DEFAULT NULL,
  `location_type` enum('simulated','library_verified','not_set') NOT NULL DEFAULT 'simulated',
  `copies` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `book_condition` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `cover_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `description`, `description_source`, `description_status`, `isbn`, `publisher`, `edition`, `pub_year`, `language`, `pages`, `format`, `category`, `subcategory_key`, `genre`, `subject_headings`, `keywords`, `call_number`, `accession`, `barcode`, `section`, `room`, `shelf`, `location_type`, `copies`, `book_condition`, `status`, `cover_path`, `created_at`, `updated_at`) VALUES
(1, 'Engineering Electromagnetics', '', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '231bed32dea1b8d4eef5f9eff1875036.jpg', '2026-11-18 11:52:38', '2026-11-18 11:52:38'),
(2, 'Underworld', 'Don Delillo', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '44e86d5b09bae3c22bf4baf8b0b8bc7a.jpg', '2026-11-18 13:37:44', '2026-11-18 13:37:44'),
(3, 'Eclipse', 'Stephennie Meyer', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'f117f00c407043d4bff9a07f4646cac8.jpg', '2026-11-18 13:40:05', '2026-11-18 13:40:05'),
(4, 'The Lost Symbol', 'Dan Brown', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '53d67cf3dd2e3440d63acca06541ef93.jpg', '2026-11-18 13:41:14', '2026-11-18 13:41:14'),
(5, 'Scientology The Fundamentals Of Thought', 'L.Ron Hubbard', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '479cc2d09f5a7061a47abc101b9c16a4.jpg', '2026-11-18 13:44:20', '2026-11-18 13:44:20'),
(6, 'Wizard First Rule', 'Terry Goodkind', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '5b6001c157d9af90560957ae72247333.jpg', '2026-11-18 13:45:14', '2026-11-18 13:45:14'),
(7, 'Dark Room', 'Andrea Kane', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '2de4ac4a7d43969aec688a4492488e35.jpg', '2026-11-18 13:46:29', '2026-11-18 13:46:29'),
(8, 'Harry Potter And The Sorerers Stone', 'J.K Rowling', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'b59d19d0b56ea92df7b981d660054e69.jpg', '2026-11-18 13:48:39', '2026-11-18 13:48:39'),
(9, 'Harry Potter And The Half Blood Prince', 'J.K Rowling', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'e0e3c9081abd98448219d07c36a85b46.jpg', '2026-11-18 13:50:16', '2026-11-18 13:50:16'),
(10, 'Harry Potter And The Order To The Phoenix', 'J.K Rowling', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '26290ba08388541c0285299d0769b8ce.jpg', '2026-11-18 13:51:12', '2026-11-18 13:51:12'),
(11, 'How To Train Your Dragon (Book 9)', 'Cressida Cowell', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '9f9c03b6633c426b6b0bd376462da2e7.jpg', '2026-11-18 13:53:04', '2026-11-18 13:53:04'),
(12, 'How To Train Your Dragon (Book 7)', 'Cressida Cowell', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'c214649ba3371e80221bf3cabda785eb.jpg', '2026-11-18 13:53:39', '2026-11-18 13:57:10'),
(13, 'How To Train Your Dragon (Book 8)', 'Cressida Cowell', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '711d094ab45c42ed98695130cb2e2bff.jpg', '2026-11-18 13:54:07', '2026-11-18 13:56:45'),
(14, 'How To Train Your Dragon (Book 3)', 'Cressida Cowell', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'cea762527c53cf9d1c7004bd60472493.jpg', '2026-11-18 13:56:37', '2026-11-18 13:56:37'),
(15, 'How To Train Your Dragon (Book 4)', 'Cressida Cowell', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '5487f7722662a28b28ebe1d82cbd6775.jpg', '2026-11-18 13:58:00', '2026-11-18 13:58:00'),
(16, 'How To Train Your Dragon (Book 5)', 'Cressida Cowell', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '8d4c46634ae01c14c97568615ca6a06b.jpg', '2026-11-18 13:58:31', '2026-11-18 13:58:31'),
(17, 'How To Train Your Dragon (Book 11)', 'Cressida Cowell', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '2601cf633bc2fd9de163624966a28c9d.jpg', '2026-11-18 13:59:20', '2026-11-18 13:59:20'),
(18, 'How To Train Your Dragon (Book 10)', 'Cressida Cowell', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '6f54ef113818550cbc077ee4d9e7e9e8.jpg', '2026-11-18 13:59:50', '2026-11-18 13:59:50'),
(19, 'How To Train Your Dragon (Book 12)', 'Cressida Cowell', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '8d59afcc864fd039b2fae101aa154f01.jpg', '2026-11-18 14:01:00', '2026-11-18 14:01:00'),
(20, 'How To Train Your Dragon (Book 6)', 'Cressida Cowell', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '2f9ec81fd217a1600bd28034f0d91234.jpg', '2026-11-18 14:01:46', '2026-11-18 14:01:46'),
(21, 'How To Train Your Dragon (Book 2)', 'Cressida Cowell', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_c', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '7355bed53c02a68e07d29baa3368d0d9.jpg', '2026-11-18 14:10:01', '2026-11-18 14:10:01'),
(22, 'Basic Electronics', 'Jayson Jueco', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '3515c8eacee97bba339412fa2733a830.jpg', '2026-11-18 14:14:12', '2026-11-18 14:14:12'),
(23, 'Engineering Fundamentals', 'Saeed Moaveni', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '9a48790e86ca62a2384118b594efe5b6.jpg', '2026-11-18 14:15:05', '2026-11-18 14:15:05'),
(24, 'Engineering Materials', 'Beteliano S. Villalas', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'ea2fc439e2e154d249d289e0756aceff.jpg', '2026-11-18 14:15:59', '2026-11-18 14:15:59'),
(25, 'Thermodynamics', 'Betellano S. Villalas', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'cda93e209b8eec7cd151dc7a26a23858.jpg', '2026-11-18 14:16:48', '2026-11-18 14:16:48'),
(26, 'Strategic Operations Management', 'Angelita Ong', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'f380b7e587edb2b223026fd4e242e8fc.jpg', '2026-11-18 14:18:19', '2026-11-18 14:18:19'),
(27, 'Logistics Management', 'Pedrito Real Pereda', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '788a1cbf7263d6037fd0bd24f1d2fe17.jpg', '2026-11-18 14:19:03', '2026-11-18 14:19:03'),
(28, 'Food Service Management', 'Lawrence Li Tan', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'f7c60e3d4311b4ceb0415157f63f9677.jpg', '2026-11-18 14:21:15', '2026-11-18 14:21:15'),
(29, 'Cost & Materials Management', 'Amelia S. Roldan', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '8cf59c401e8920df6f60d359ad01d2f0.jpg', '2026-11-18 14:21:57', '2026-11-18 14:21:57'),
(30, 'Tour Guiding Services', 'Dolores N. Salamanca', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '1defb07225173e2081e6eac4456cbe94.jpg', '2026-11-18 14:22:43', '2026-11-18 14:22:43'),
(31, 'Principles Of Organization and Management', 'Angelita Ong', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '59eca1421ad93ba07caaee45f9467aed.jpg', '2026-11-18 14:24:09', '2026-11-18 14:24:09'),
(32, 'Risk Management', 'Ana Marie M. Somoray', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '87b870fab8c12274e1b2034cfc4e0f63.jpg', '2026-11-18 14:24:55', '2026-11-18 14:24:55'),
(33, 'Strategic Human Resource Management', 'Angelita Ong', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '1fa0afc52bb365054a962c4750d2dbbf.jpg', '2026-11-18 14:25:43', '2026-11-18 14:25:43'),
(34, 'Total Quality Management', 'Juan Martin Guasch', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'f43ce6a7095b4eb7835f04471d56d570.jpg', '2026-11-18 14:26:38', '2026-11-18 14:26:38'),
(35, 'Facilities And Management', 'Angelita Ong', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '4a1481f4cab459b5a3764ffbcb3b3e95.jpg', '2026-11-18 14:27:15', '2026-11-18 14:27:15'),
(36, 'Basic Concepts In Nursing 100', '', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '261bf688f389b1823a5f1ad64ae1fd31.jpg', '2026-11-18 14:28:13', '2026-11-18 14:28:13'),
(37, 'Healing Wonders Of Diet', 'Belecenda Miranda Varona', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '7e7ba14b183f9bb2eb0a55ab978a8ca7.jpg', '2026-11-18 14:29:36', '2026-11-18 14:29:36'),
(38, 'Cardiology Bluebook', 'Willie T. Ong', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '9a9691f6d4ba58bb86bb939bbb37f084.jpg', '2026-11-18 14:30:24', '2026-11-18 14:30:24'),
(39, 'Medi-Surgi-Xing', 'Tuesca Untalan', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'f53ff19c79c1c062ba2700ee5f989977.jpg', '2026-11-18 14:31:33', '2026-11-18 14:31:33'),
(40, 'Breaking Through Biology', 'Susan D. Manosa', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_b', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '39b631cb6efbaf647b31613913327daf.jpg', '2026-11-18 14:32:09', '2026-11-18 14:32:09'),
(41, 'The Teaching Profession', 'Avelina M. Jao', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'e331f13b2e30b95e6f8cd530e0c46d1d.jpg', '2026-11-18 14:34:09', '2026-11-18 14:34:09'),
(42, 'Mother Tounge', 'Fina Felisa Alcudia', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '964485875023cb065405790975dc21d3.jpg', '2026-11-18 14:35:11', '2026-11-18 14:35:11'),
(43, 'Principles Of Teaching 1', 'Brenda B. Corpuz', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '0e698b63af27448ced5f11d0113283ef.jpg', '2026-11-18 14:36:17', '2026-11-18 14:36:17'),
(44, 'Curriculum Development', 'Purita P. Bibao', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '8e529f88ebcd2d05aa45cd2774b9579e.jpg', '2026-11-18 14:37:59', '2026-11-18 14:37:59'),
(45, 'Classroom Management', 'Beriones Danocup', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', NULL, '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '1df3e40c9b6d906845f5d00d36882836.jpg', '2026-11-18 14:39:55', '2026-11-18 14:39:55'),
(46, 'Advance Financial Accounting And Reporting', 'Angelito R. Punzalan', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'finance', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'b819a5b60ad029910b8a89c005c7d71b.jpg', '2026-11-18 14:41:14', '2026-11-18 14:41:14'),
(47, 'Money, Credit & Banking', '', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'finance', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'a23932f5d033f739154b58f6e500f77a.jpg', '2026-11-18 14:42:03', '2026-11-18 14:42:03'),
(48, 'Principles Of Auditing And Assurance Services', 'Gilbert Anthony B. Cabrera', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'finance', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '1a4996e5335cae0cd4a7c70b94dd0955.jpg', '2026-11-18 14:43:08', '2026-11-18 14:43:08'),
(49, 'Cost Accounting And Control', 'Elenita Balatbat Cabrera', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'finance', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '0a47bc422357155c4360ab880a0ae11d.jpg', '2026-11-18 14:44:15', '2026-11-18 14:44:15'),
(50, 'Auditing Theory', 'Jekell Salosagcol', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'finance', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '85066569c6fbec25dfa5a49156b36d22.jpg', '2026-11-18 14:45:04', '2026-11-18 14:45:04'),
(51, 'My Ever Own 1987 Constitution', 'Andres R. Delos Santos', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'law', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'fb268f74a08f8c5ab2ac13408e2a17cf.jpg', '2026-11-18 14:46:36', '2026-11-18 14:46:36'),
(52, 'Partnership And Corporations', 'Fidelito R. Rosario', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'law', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '62603a95871e0b7a1aee52f2bf50b393.jpg', '2026-11-18 14:47:22', '2026-11-18 14:47:22'),
(53, 'Laws In The Hospitality Industry', 'Tranquilino R. Cagurangan', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'law', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '5e2f1dbb1111f28cc412b91048451069.jpg', '2026-11-18 14:48:22', '2026-11-18 14:48:22'),
(54, 'Labor Laws And Legislation', 'Alden Reuben B. Luna', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'law', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '8301a0e071e13c79c302294e8f5869aa.jpg', '2026-11-18 14:49:57', '2026-11-18 14:49:57'),
(55, 'The Law on Obligations and Contracts', 'Hector S. De Leon', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'law', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '56da88c60a0c658c38e4caf04a0831d0.jpg', '2026-11-18 14:51:14', '2026-11-18 14:51:14'),
(56, 'Personal Development', 'Angelito Ong', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'social_sciences', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', '859e676c7ace1bbca1e5ee860e59bf71.jpg', '2026-11-18 14:53:00', '2026-11-18 14:53:00'),
(57, 'Strategies Production and Operations Management', 'Rome Sherriff G. Montoya', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'social_sciences', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'b1075695ebe6652347308ff6f051b882.jpg', '2026-11-18 14:54:21', '2026-11-18 14:54:21'),
(58, 'Competence in Oral Communication and Public Speaking', 'Evarista G. Nuval', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'social_sciences', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'bfd77b0a64102b374a774cc8e355cbdd.jpg', '2026-11-18 14:56:42', '2026-11-18 14:56:42'),
(59, 'Discipline And Ideas In The Social Science', 'Cherille V. Siquete', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'social_sciences', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'c4754a92f9248c5d4e5efa2729cd5b0f.jpg', '2026-11-18 14:58:20', '2026-11-18 14:58:20'),
(60, 'Disciplines And Ideas', 'Mariano M. Ariola', '', '', 'draft', '', '', '', '', '', NULL, '', 'category_a', 'social_sciences', '', '[]', '[]', '', '', '', '', '', '', 'not_set', 1, '', 'Active in catalog', 'd1591da4f046841a1111bb7fd101b8f9.jpg', '2026-11-18 15:00:35', '2026-11-18 15:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_key` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_key`, `name`, `description`, `sort_order`, `is_active`, `created_at`) VALUES
(1, 'category_a', 'Social Sciences', 'Social sciences, law, education, and finance.', 1, 1, '2026-11-17 16:22:08'),
(2, 'category_b', 'Technology (Applied Science)', 'Medical sciences, engineering, applied operations, management, and auxiliary fields.', 2, 1, '2026-11-17 16:22:08'),
(3, 'category_c', 'Literatures & Rhetoric', 'Fiction and literary works.', 3, 1, '2026-11-17 16:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_key` varchar(50) NOT NULL,
  `subcategory_key` varchar(80) NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_key`, `subcategory_key`, `name`, `description`, `sort_order`, `is_active`, `created_at`) VALUES
(1, 'category_a', 'social_sciences', 'Social Sciences', 'Books about society, social institutions, and human behavior.', 1, 1, '2026-11-18 11:31:07'),
(2, 'category_a', 'law', 'Law', 'Legal systems, laws, contracts, and related subjects.', 2, 1, '2026-11-18 11:31:07'),
(3, 'category_a', 'education', 'Education', 'Teaching, learning, educational theory, and practice.', 3, 1, '2026-11-18 11:31:07'),
(4, 'category_a', 'finance', 'Finance', 'Money, banking, accounting, and financial management.', 4, 1, '2026-11-18 11:31:07'),
(5, 'category_b', 'medical_sciences_medicine', 'Medical Sciences & Medicine', 'Medicine, health sciences, and clinical subjects.', 1, 1, '2026-11-18 11:31:07'),
(6, 'category_b', 'engineering_applied_operations', 'Engineering & Applied Operations', 'Engineering, electronics, and applied technical subjects.', 2, 1, '2026-11-18 11:31:07'),
(7, 'category_b', 'management_auxiliary', 'Management & Auxiliary', 'Management, operations, and auxiliary service subjects.', 3, 1, '2026-11-18 11:31:07'),
(8, 'category_c', 'fiction', 'Fiction', 'Novels, short stories, and imaginative literary works.', 1, 1, '2026-11-18 11:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'librarian',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `role`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'shelfsenseadmin', '$2b$12$TsEpBG9UW1N8GoYpBUq7zun9Mn.FLDKbYWzd7VY0uix2HXmZQHNPy', 'librarian', 1, '2026-11-18 06:53:55', '2026-11-18 11:34:42');

-- --------------------------------------------------------

--
-- Structure for view `ai_book_content`
--
DROP TABLE IF EXISTS `ai_book_content`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ai_book_content`  AS SELECT `b`.`id` AS `id`, `b`.`title` AS `title`, `b`.`author` AS `author`, `b`.`description` AS `description`, `b`.`genre` AS `genre`, `b`.`subject_headings` AS `subject_headings`, `b`.`keywords` AS `keywords`, `b`.`category` AS `category`, `c`.`name` AS `category_name`, `b`.`subcategory_key` AS `subcategory_key`, `s`.`name` AS `subcategory_name` FROM ((`books` `b` join `categories` `c` on(`c`.`category_key` = `b`.`category`)) left join `subcategories` `s` on(`s`.`subcategory_key` = `b`.`subcategory_key`)) WHERE `b`.`description` is not null AND trim(`b`.`description`) <> '' AND `b`.`description_status` in ('reviewed','approved') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_books_category` (`category`),
  ADD KEY `idx_books_title` (`title`),
  ADD KEY `idx_books_author` (`author`),
  ADD KEY `idx_books_accession` (`accession`),
  ADD KEY `idx_books_barcode` (`barcode`),
  ADD KEY `idx_books_call_number` (`call_number`),
  ADD KEY `idx_books_isbn` (`isbn`),
  ADD KEY `fk_books_subcategory` (`category`,`subcategory_key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_categories_key` (`category_key`),
  ADD KEY `idx_categories_active_sort` (`is_active`,`sort_order`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_subcategories_key` (`subcategory_key`),
  ADD UNIQUE KEY `uq_subcategories_category_key` (`category_key`,`subcategory_key`),
  ADD KEY `idx_subcategories_category_sort` (`category_key`,`is_active`,`sort_order`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_users_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_books_category_key` FOREIGN KEY (`category`) REFERENCES `categories` (`category_key`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_books_subcategory` FOREIGN KEY (`category`,`subcategory_key`) REFERENCES `subcategories` (`category_key`, `subcategory_key`) ON UPDATE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `fk_subcategories_category` FOREIGN KEY (`category_key`) REFERENCES `categories` (`category_key`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
