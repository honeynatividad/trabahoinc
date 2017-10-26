-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 11, 2017 at 06:12 PM
-- Server version: 5.6.28-76.1-log
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `emptori1_ubelt`
--

-- --------------------------------------------------------

--
-- Table structure for table `campuses`
--

DROP TABLE IF EXISTS `campuses`;
CREATE TABLE IF NOT EXISTS `campuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(1024) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Truncate table before insert `campuses`
--

TRUNCATE TABLE `campuses`;
--
-- Dumping data for table `campuses`
--

INSERT INTO `campuses` (`id`, `code`, `name`, `created`, `modified`) VALUES
(3, 'PUP', 'Polytechnic University of the Philippines', '2017-03-09 02:35:24', '2017-03-08 11:44:17'),
(4, 'EARIST', 'Eulogio Amang Rodriguez Institute of Science and Technology', '2017-03-08 11:45:32', '2017-03-08 11:45:32'),
(5, 'PLM', 'Pamantasan ng Lungsod ng Maynila', '2017-03-09 06:37:11', '2017-03-08 12:12:02'),
(6, 'FEU', 'Far Eastern University', '2017-03-09 10:21:16', '2017-03-09 10:21:16'),
(7, 'NU', 'National University', '2017-03-09 10:22:04', '2017-03-09 10:22:04'),
(8, 'UE', 'University of the East', '2017-03-09 10:22:46', '2017-03-09 10:22:46'),
(9, 'UM', 'University of Manila', '2017-03-09 10:23:38', '2017-03-09 10:23:38'),
(10, 'UST', 'University of Santo Tomas', '2017-03-09 10:24:49', '2017-03-09 10:24:49'),
(11, 'ADU', 'Adamson University', '2017-03-09 10:25:13', '2017-03-09 10:25:13'),
(13, 'LCC', 'La Consolacion College', '2017-03-09 10:25:50', '2017-03-09 10:25:50'),
(14, 'MIT', 'Mapua Institute of Technology', '2017-03-09 10:26:55', '2017-03-09 10:26:55'),
(15, 'PNU', 'Philippine Normal University', '2017-03-09 10:27:22', '2017-03-09 10:27:22'),
(16, 'TUP', 'Technological University of Philippines', '2017-03-09 10:28:26', '2017-03-09 10:28:26'),
(17, 'UDM', 'Universidad de Manila', '2017-03-09 10:28:49', '2017-03-09 10:28:49'),
(18, 'CEU', 'Centro Escolar University', '2017-03-09 10:29:19', '2017-03-09 10:29:19'),
(19, 'NTC', 'National Teachers College', '2017-03-09 10:29:43', '2017-03-09 10:29:43'),
(20, 'SBC', 'San Beda College', '2017-03-09 10:30:10', '2017-03-09 10:30:10'),
(21, 'TIP', 'Technological Institute of the Philippines', '2017-03-09 10:31:08', '2017-03-09 10:31:08'),
(22, 'AU', 'Arellano University', '2017-03-09 10:31:35', '2017-03-09 10:31:35'),
(23, 'OTHER', 'OTHER', '2017-03-09 10:52:26', '2017-03-09 10:52:26'),
(24, 'MIXED', 'MIXED', '2017-03-10 03:54:01', '2017-03-10 03:54:01');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `ci_sessions`
--

TRUNCATE TABLE `ci_sessions`;
--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('325a0e0036dd2641ae9c36bd880793542343561e', '::1', 1487360085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336303038303b);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Truncate table before insert `images`
--

TRUNCATE TABLE `images`;
-- --------------------------------------------------------

--
-- Table structure for table `interns`
--

DROP TABLE IF EXISTS `interns`;
CREATE TABLE IF NOT EXISTS `interns` (
  `intern_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `victory_group_id` int(11) NOT NULL,
  `intern_name` varchar(1024) NOT NULL,
  `contact_number` varchar(1024) NOT NULL,
  `campus` varchar(1024) NOT NULL,
  `year_level` varchar(1024) NOT NULL,
  `graduating` varchar(1024) NOT NULL,
  `one_2_one` varchar(1024) NOT NULL,
  `victory_weekend` varchar(1024) NOT NULL,
  `water_baptism` varchar(1024) NOT NULL,
  `making_disciples` varchar(1024) NOT NULL,
  `church_community` varchar(1024) NOT NULL,
  `foundation_class` varchar(1024) NOT NULL,
  `empowering_leaders` varchar(1024) NOT NULL,
  `leadership_113` varchar(1024) NOT NULL,
  `do_you_have_another_intern` varchar(1024) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`intern_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Truncate table before insert `interns`
--

TRUNCATE TABLE `interns`;
--
-- Dumping data for table `interns`
--

INSERT INTO `interns` (`intern_id`, `member_id`, `victory_group_id`, `intern_name`, `contact_number`, `campus`, `year_level`, `graduating`, `one_2_one`, `victory_weekend`, `water_baptism`, `making_disciples`, `church_community`, `foundation_class`, `empowering_leaders`, `leadership_113`, `do_you_have_another_intern`, `created`, `modified`) VALUES
(1, 3, 1, 'Test Intern', 'Test Contact', 'Polytechnic University of the Philippines', 'Senior HS', 'No', '1', '1', '', '', '', '', '', '', 'No', '2017-03-08 21:22:37', '2017-03-09 05:22:37'),
(2, 6, 5, 'Not Mention', '9261400111', 'Arellano University', 'Fourth Year', 'No', '1', '1', '1', '', '1', '', '', '', 'No', '2017-03-09 02:51:03', '2017-03-09 10:51:03'),
(3, 7, 6, 'Renz Gatmaitan', '09979012979', 'Arellano University', 'Second Year', 'No', '1', '1', '1', '', '', '', '', '', '', '2017-03-09 03:02:45', '2017-03-09 11:02:45'),
(5, 13, 13, 'Ck De Rojas', '09279103186', 'Far Eastern University', 'Second Year', 'No', '1', '1', '1', '', '', '', '', '', 'Yes', '2017-03-09 11:44:47', '2017-03-09 19:44:47'),
(6, 13, 13, 'Glenn Macauba', '09355441293', 'Far Eastern University', 'Third Year', 'No', '1', '1', '1', '1', '1', '1', '', '', 'No', '2017-03-09 11:47:40', '2017-03-09 19:47:40'),
(7, 14, 14, 'Rebecca Dayao', '09354704031', 'Far Eastern University', 'Third Year', 'Yes', '1', '1', '1', '1', '1', '', '', '', 'No', '2017-03-09 12:02:09', '2017-03-09 20:02:09'),
(8, 18, 17, 'Japps Pidong', '09352944879', 'Far Eastern University', 'Second Year', 'No', '1', '1', '1', '1', '', '', '', '', 'No', '2017-03-09 16:04:38', '2017-03-10 00:04:38'),
(9, 18, 17, 'Japps Pidong', '09352944879', 'Far Eastern University', 'Second Year', 'No', '1', '1', '1', '1', '', '', '', '', 'No', '2017-03-09 16:11:08', '2017-03-10 00:11:08'),
(10, 20, 19, 'Cyreel', '09272293169', 'Far Eastern University', 'Third Year', 'No', '1', '1', '1', '1', '', '', '', '', 'No', '2017-03-09 17:01:42', '2017-03-10 01:01:42'),
(11, 23, 22, 'Noriel Silverio', '09262039144', 'Far Eastern University', 'Second Year', 'No', '1', '1', '1', '', '1', '', '', '', 'No', '2017-03-09 17:28:55', '2017-03-10 01:28:55'),
(12, 25, 24, 'Keth Conte', '09051307941', 'Far Eastern University', 'Fourth Year', 'Yes', '1', '1', '1', '', '1', '', '', '', 'No', '2017-03-09 20:35:43', '2017-03-10 04:35:43'),
(13, 26, 25, 'Jenny Aggabao', '09278873552', 'Far Eastern University', 'Fourth Year', 'Yes', '1', '1', '1', '', '', '', '', '', 'Yes', '2017-03-09 20:46:11', '2017-03-10 04:46:11'),
(14, 26, 25, 'Olifaith Taccad', '09362669844', 'Far Eastern University', 'Third Year', 'No', '1', '1', '1', '', '', '', '', '', 'Yes', '2017-03-09 20:47:35', '2017-03-10 04:47:35'),
(15, 26, 25, 'Roselle Inumerable', '09154588928', 'Far Eastern University', 'Second Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-09 20:49:03', '2017-03-10 04:49:03'),
(16, 28, 27, 'Stephen Pangan', '09506273439', 'OTHER', 'Junior HS', 'No', '1', '1', '1', '1', '', '1', '', '', 'Yes', '2017-03-09 21:02:17', '2017-03-10 05:02:17'),
(17, 28, 27, 'Gabriel Peralta', '09329793075', 'OTHER', 'Senior HS', 'No', '1', '1', '1', '', '', '1', '1', '', 'No', '2017-03-09 21:03:18', '2017-03-10 05:03:18'),
(18, 30, 29, 'Camille Paz', '0936790771', 'Far Eastern University', 'Fourth Year', 'Yes', '1', '1', '1', '1', '1', '', '', '', 'No', '2017-03-09 21:18:08', '2017-03-10 05:18:08'),
(19, 31, 30, 'Michaela Fabi', '09354707537', 'OTHER', 'Second Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-09 21:27:22', '2017-03-10 05:27:22'),
(20, 31, 30, 'Michaela Fabi', '09354707537', 'OTHER', 'Second Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-09 21:27:22', '2017-03-10 05:27:22'),
(21, 33, 32, 'Ainara Hazel Oxeño', '09272556221', 'Far Eastern University', 'Second Year', 'No', '1', '1', '1', '1', '1', '', '', '', 'No', '2017-03-09 21:44:47', '2017-03-10 05:44:47'),
(22, 35, 34, 'Pau Andoloy', '09063016475', 'Far Eastern University', 'Third Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-09 21:58:00', '2017-03-10 05:58:00'),
(23, 36, 35, 'Mikee Aguas', '09954597484', 'Far Eastern University', 'Fourth Year', 'Yes', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-09 22:04:31', '2017-03-10 06:04:31'),
(24, 37, 36, 'Raymond Paner', '090165526643', 'Far Eastern University', 'Second Year', 'No', '1', '1', '1', '1', '1', '1', '1', '', 'Yes', '2017-03-09 22:15:13', '2017-03-10 06:15:13'),
(25, 37, 36, 'Niko Gepiga', '09773830898', 'Far Eastern University', 'First year', 'No', '1', '1', '1', '', '', '1', '', '', 'No', '2017-03-09 22:17:57', '2017-03-10 06:17:57'),
(26, 38, 37, 'Bianca Dela Cruz', '09169680919', 'Far Eastern University', 'Fourth Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-09 22:25:51', '2017-03-10 06:25:51'),
(27, 40, 39, 'Ariel Reyes', '00000000000', 'Far Eastern University', 'Third Year', 'No', '1', '1', '1', '1', '1', '', '', '', 'Yes', '2017-03-09 22:41:39', '2017-03-10 06:41:39'),
(28, 40, 39, 'Jerico Calaro', '00000000000', 'Far Eastern University', 'Third Year', 'No', '1', '1', '1', '1', '1', '', '', '', 'No', '2017-03-09 22:42:12', '2017-03-10 06:42:12'),
(29, 41, 40, 'Macky Oliveros', '09161422189', 'Far Eastern University', 'Second Year', 'No', '1', '1', '1', '1', '', '', '', '', 'Yes', '2017-03-09 22:49:10', '2017-03-10 06:49:10'),
(30, 41, 40, 'Queene Magsino', '09979516956', 'Far Eastern University', 'Fourth Year', 'Yes', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-09 22:49:58', '2017-03-10 06:49:58'),
(31, 46, 44, 'Mary Ann Dela Cruz', '09185921821', 'University of the East', 'Junior HS', 'No', '1', '1', '1', '1', '1', '', '', '', 'No', '2017-03-09 23:25:20', '2017-03-10 07:25:20'),
(32, 46, 44, 'Mary Ann Dela Cruz', '09185921821', 'University of the East', 'Junior HS', 'No', '1', '1', '1', '1', '1', '', '', '', 'No', '2017-03-09 23:25:30', '2017-03-10 07:25:30'),
(33, 46, 44, 'Mary Ann Dela Cruz', '09185921821', 'University of the East', 'Junior HS', 'No', '1', '1', '1', '1', '1', '', '', '', 'No', '2017-03-09 23:25:46', '2017-03-10 07:25:46'),
(35, 53, 52, 'Jasmine Laurenaria', '09974128221', 'Technological Institute of the Philippines', 'Third Year', 'No', '1', '1', '1', '', '1', '', '', '', 'Yes', '2017-03-10 03:43:00', '2017-03-10 11:43:00'),
(36, 53, 52, 'Erika Lachica', '09057481630', 'Technological Institute of the Philippines', 'Second Year', 'No', '1', '1', '1', '', '1', '', '', '', 'No', '2017-03-10 03:44:06', '2017-03-10 11:44:06'),
(37, 54, 53, 'Lorraine Cuenco', '09088882106', 'University of Santo Tomas', 'Junior HS', 'No', '1', '1', '1', '', '1', '1', '', '', 'Yes', '2017-03-10 03:45:33', '2017-03-10 11:45:33'),
(38, 54, 53, 'Denieze Lacsina', '09088181742', 'OTHER', 'Junior HS', 'No', '1', '1', '1', '', '1', '1', '', '', 'No', '2017-03-10 03:46:31', '2017-03-10 11:46:31'),
(39, 55, 54, 'Alliah Ariola', '09063893157', 'Centro Escolar University', 'Senior HS', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-10 03:49:25', '2017-03-10 11:49:25'),
(40, 58, 56, 'Danilyn A. Laban', '09199318827', 'Technological Institute of the Philippines', 'Second Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-10 03:51:13', '2017-03-10 11:51:13'),
(41, 55, 60, 'Ava Mariño', '09759636654', 'OTHER', 'Junior HS', 'No', '1', '1', '1', '', '1', '', '', '', 'Yes', '2017-03-10 03:54:37', '2017-03-10 11:54:37'),
(42, 55, 60, 'Veronica Gamoso', '09163449042', 'University of Santo Tomas', 'Junior HS', 'No', '1', '1', '1', '', '1', '', '', '', 'No', '2017-03-10 03:55:51', '2017-03-10 11:55:51'),
(43, 57, 61, 'Samantha Milan', '09067974665', 'OTHER', 'Third Year', 'No', '1', '1', '1', '1', '1', '', '', '', 'Yes', '2017-03-10 04:00:45', '2017-03-10 12:00:45'),
(44, 60, 62, 'Stephanie Estrella', '09167430531', 'OTHER', 'Third Year', 'No', '1', '1', '', '', '', '', '', '', 'No', '2017-03-10 04:00:49', '2017-03-10 12:00:49'),
(45, 57, 61, 'Josephine Dela Cruz', '09771617868', 'OTHER', 'Third Year', 'No', '1', '1', '1', '1', '1', '1', '', '', 'Yes', '2017-03-10 04:02:28', '2017-03-10 12:02:28'),
(46, 57, 61, 'Krizchelle Cunanan', '09351700495', 'OTHER', 'Fourth Year', 'No', '1', '1', '1', '1', '', '', '', '', 'No', '2017-03-10 04:04:25', '2017-03-10 12:04:25'),
(47, 67, 72, 'Karen Martinez', '09266580401', 'Centro Escolar University', 'Fourth Year', 'Yes', '1', '1', '1', '1', '', '', '', '', 'No', '2017-03-10 04:19:47', '2017-03-10 12:19:47'),
(48, 70, 75, 'Art Telan', '00000000000', 'University of Manila', 'Third Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-10 04:25:30', '2017-03-10 12:25:30'),
(49, 70, 75, 'Art Telan', '00000000000', 'University of Manila', 'Third Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-10 04:25:51', '2017-03-10 12:25:51'),
(50, 71, 77, 'Tina Bathan', '09063194870', 'Centro Escolar University', 'Third Year', 'No', '1', '1', '1', '1', '', '1', '1', '', 'Yes', '2017-03-10 04:35:03', '2017-03-10 12:35:03'),
(51, 71, 77, 'Julia Domingo', '09157733566', 'Centro Escolar University', 'Second Year', 'No', '1', '1', '1', '1', '', '', '', '', 'No', '2017-03-10 04:36:12', '2017-03-10 12:36:12'),
(52, 74, 80, 'Abegail Capcion', '09075064263', 'University of Manila', 'Fourth Year', 'No', '1', '1', '', '', '', '1', '', '', 'Yes', '2017-03-10 04:37:18', '2017-03-10 12:37:18'),
(53, 74, 80, 'Geodelyn Cuartero', '09758959526', 'University of Manila', 'Fourth Year', 'No', '1', '1', '1', '', '', '', '', '', 'Yes', '2017-03-10 04:38:31', '2017-03-10 12:38:31'),
(54, 74, 80, 'Aurea Mae Dela Cruz', '09068170612', 'University of Manila', '', '', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-10 04:39:23', '2017-03-10 12:39:23'),
(55, 78, 84, 'Ghianne Santiago', '09157531544', 'University of the East', 'Second Year', 'No', '1', '1', '1', '1', '', '', '', '', 'Yes', '2017-03-10 04:43:24', '2017-03-10 12:43:24'),
(56, 77, 83, 'Aldrin Flores ', '9354564827', 'Mapua Institute of Technology', 'Fourth Year', 'No', '1', '1', '1', '', '1', '', '', '', 'No', '2017-03-10 04:43:28', '2017-03-10 12:43:28'),
(57, 78, 84, 'Jezeil Dushanbe Polinar', '09277375008', 'University of the East', 'Third Year', 'No', '1', '1', '1', '1', '', '', '', '', 'No', '2017-03-10 04:44:22', '2017-03-10 12:44:22'),
(58, 80, 88, 'Benjie Azarcon', '09351661585', 'University of Manila', 'Fourth Year', 'No', '1', '1', '1', '1', '1', '', '', '', '', '2017-03-10 04:59:46', '2017-03-10 12:59:46'),
(59, 82, 89, 'Nigel Hongayo', '09756705026', 'Adamson University', 'Third Year', 'No', '1', '1', '1', '1', '1', '1', '', '', 'No', '2017-03-10 05:01:22', '2017-03-10 13:01:22'),
(60, 85, 94, 'Junicka Carreon', '09176282666', 'Centro Escolar University', 'Third Year', 'No', '1', '1', '1', '1', '1', '', '', '', 'Yes', '2017-03-10 05:07:45', '2017-03-10 13:07:45'),
(61, 87, 95, 'Cris Marvin Malacca', '09362539644', 'OTHER', 'Second Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-10 05:08:27', '2017-03-10 13:08:27'),
(62, 85, 94, 'Reign Layug', '9165029822', 'Centro Escolar University', 'Third Year', 'No', '1', '1', '1', '1', '', '', '', '', 'Yes', '2017-03-10 05:08:47', '2017-03-10 13:08:47'),
(63, 85, 94, 'Angelica Pobre', '09771869450', 'Centro Escolar University', 'Fourth Year', 'No', '1', '1', '1', '1', '', '', '', '', 'No', '2017-03-10 05:09:49', '2017-03-10 13:09:49'),
(64, 88, 96, 'Brix Mendoza', '09356187548', 'Adamson University', 'Second Year', 'No', '1', '1', '1', '1', '1', '1', '', '', 'Yes', '2017-03-10 05:12:33', '2017-03-10 13:12:33'),
(65, 88, 96, 'Jude Estrada', '09483485568', 'Adamson University', 'Second Year', 'No', '1', '1', '1', '1', '1', '1', '1', '', 'No', '2017-03-10 05:13:33', '2017-03-10 13:13:33'),
(66, 90, 97, 'Enrico Galido', '09058000947', 'University of the East', 'Second Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-10 05:14:13', '2017-03-10 13:14:13'),
(67, 92, 100, 'Brienne Nicole Biron', '09753352331', 'University of Manila', 'Second Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-10 05:17:26', '2017-03-10 13:17:26'),
(68, 88, 101, 'Mark Jethro Tomas', '09058759764', 'Philippine Normal University', 'Second Year', 'No', '1', '1', '1', '1', '', '', '', '', 'No', '2017-03-10 05:17:52', '2017-03-10 13:17:52'),
(69, 96, 103, 'Anne Oliveros', '09067274713', 'Centro Escolar University', 'Third Year', 'No', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-10 05:24:38', '2017-03-10 13:24:38'),
(70, 98, 111, 'Erica Pascual', '9064488864', 'Mapua Institute of Technology', 'Second Year', 'No', '1', '1', '1', '', '1', '', '', '', 'No', '2017-03-10 05:30:49', '2017-03-10 13:30:49'),
(71, 104, 114, 'Kath Castrence', '09989515078', 'University of the East', 'Third Year', 'No', '1', '1', '', '', '', '', '', '', 'No', '2017-03-10 05:39:07', '2017-03-10 13:39:07'),
(72, 105, 117, 'Kathleen Tare', '09075936121', 'Adamson University', 'Fourth Year', 'No', '1', '1', '1', '1', '', '', '', '', 'No', '2017-03-10 05:43:55', '2017-03-10 13:43:55'),
(73, 110, 120, 'Shamina Baluyot', '09175212919', 'University of the East', 'Other', 'Yes', '1', '1', '1', '', '', '', '', '', 'Yes', '2017-03-10 05:51:36', '2017-03-10 13:51:36'),
(74, 108, 122, 'Ton Basco', '09275502708', 'Centro Escolar University', 'Fifth Year', 'No', '1', '1', '1', '1', '1', '', '', '', 'No', '2017-03-10 05:52:11', '2017-03-10 13:52:11'),
(75, 110, 120, 'Alecxie Penaflor', '09268275447', 'University of the East', 'Other', 'Yes', '1', '1', '1', '', '', '', '', '', 'No', '2017-03-10 05:52:22', '2017-03-10 13:52:22'),
(76, 109, 123, 'JP Dagdagan', '09988644672', 'Adamson University', 'Fourth Year', 'No', '1', '1', '1', '1', '1', '1', '1', '', 'Yes', '2017-03-10 05:54:27', '2017-03-10 13:54:27'),
(77, 109, 123, 'Herald Ching', '09750217234', 'Adamson University', 'Second Year', 'No', '1', '1', '1', '1', '1', '1', '1', '', 'No', '2017-03-10 05:55:46', '2017-03-10 13:55:46'),
(78, 117, 131, 'Elisha Hermosa', '09771223282', 'Centro Escolar University', 'Third Year', 'No', '1', '1', '1', '1', '1', '1', '1', '', 'No', '2017-03-10 06:07:30', '2017-03-10 14:07:30'),
(79, 118, 132, 'Renz Hernandez', '09261317948', 'University of the East', 'Fourth Year', 'Yes', '1', '1', '1', '1', '', '1', '1', '', 'No', '2017-03-10 06:07:40', '2017-03-10 14:07:40'),
(80, 119, 133, 'Abigail Obis', '09064497360', 'University of Santo Tomas', 'Third Year', 'No', '1', '1', '1', '', '', '1', '', '', 'No', '2017-03-10 06:08:28', '2017-03-10 14:08:28'),
(81, 122, 138, 'Kaye Anne Lee', '09054719330', 'University of the East', 'Fourth Year', 'Yes', '1', '1', '', '1', '', '', '', '', 'No', '2017-03-10 06:18:50', '2017-03-10 14:18:50'),
(82, 123, 139, 'Paula Masangkay', '09157845071', 'University of Santo Tomas', 'Second Year', 'No', '1', '1', '1', '1', '', '1', '', '', 'No', '2017-03-10 06:21:09', '2017-03-10 14:21:09');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(1024) NOT NULL,
  `middle_name` varchar(1024) NOT NULL,
  `last_name` varchar(1024) NOT NULL,
  `contact_number` varchar(1024) NOT NULL,
  `birthday` varchar(128) NOT NULL,
  `email_address` varchar(1024) NOT NULL,
  `facebook_name` varchar(1024) NOT NULL,
  `complete_home_address` text NOT NULL,
  `campus` varchar(1024) NOT NULL,
  `area` varchar(1024) NOT NULL,
  `year_level` varchar(1024) NOT NULL,
  `graduating` varchar(1024) NOT NULL,
  `youth_services_you_attend` varchar(1024) NOT NULL,
  `ministry_involvement` varchar(1024) NOT NULL,
  `name_of_your_leadership_group` varchar(1024) NOT NULL,
  `one_2_one` varchar(1024) NOT NULL,
  `victory_weekend` varchar(1024) NOT NULL,
  `water_baptism` varchar(1024) NOT NULL,
  `making_disciples` varchar(1024) NOT NULL,
  `church_community` varchar(1024) NOT NULL,
  `foundation_class` varchar(1024) NOT NULL,
  `empowering_leaders` varchar(1024) NOT NULL,
  `leadership_113` varchar(1024) NOT NULL,
  `how_many_victory_groups_you_are_leading` varchar(1024) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=124 ;

--
-- Truncate table before insert `members`
--

TRUNCATE TABLE `members`;
--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `first_name`, `middle_name`, `last_name`, `contact_number`, `birthday`, `email_address`, `facebook_name`, `complete_home_address`, `campus`, `area`, `year_level`, `graduating`, `youth_services_you_attend`, `ministry_involvement`, `name_of_your_leadership_group`, `one_2_one`, `victory_weekend`, `water_baptism`, `making_disciples`, `church_community`, `foundation_class`, `empowering_leaders`, `leadership_113`, `how_many_victory_groups_you_are_leading`, `created`, `modified`) VALUES
(2, 'Test Fname', 'Test MName', 'Test LName', '1234567', '09/03/2017', 'admin@gmail.com', 'Test FB Name', 'Test', 'Polytechnic University of the Philippines', 'Sta. Mesa', 'Staff', 'Not applicable', ',,,,,', ',,,,,,,,', 'Test LG Leader', '03/2017', '03/2017', '03/2017', '03/2017', '03/2017', '03/2017', '03/2017', '03/2017', '2', '2017-03-10 00:15:37', '2017-03-09 02:09:16'),
(3, 'Test Fname', 'Test MName', 'Test LName', '1234567', '09/03/2017', 'courtneybobila@gmail.com', 'Test FB Name', 'Test Add', 'Polytechnic University of the Philippines', 'Sta. Mesa', 'Third Year', 'No', 'th-5pm,th-7pm,,,,', ',,,,Prayer Ministry,,,,', 'Test LG Leader', '00/0000', '03/2017', '03/2017', '03/2017', '03/2017', '03/2017', '03/2017', '03/2017', '2', '2017-03-08 21:20:37', '2017-03-09 05:20:37'),
(4, 'Alyssa Isobelle', 'Not mention', 'Villafana', '9759834676', '1/03/1996', 'isobelleyssa@gmail.com', 'Alyssa Isobelle Villafana', 'Rm 208 nrm mansion 266 st terisita st sampaloc manila', 'Arellano University', 'Sta. Mesa', 'Second Year', 'No', 'th-5pm,,,,,service-other', ',Communication,Kids,,Prayer Ministry,Production Design,Technical and Stage Management,Ushering,None', 'Rose Laggui', '09/2015', '09/2015', '09/2015', '09/2015', '09/2015', '10/2015', '07/2016', '00/0000', '1', '2017-03-10 00:16:39', '2017-03-09 10:26:24'),
(5, 'Benjie', 'Not mention', 'Hernane', '09173218026', '5/20/1992', 'benjie_hernane@yahoo.com', 'Benjie Hernane', '2600 legarda manila\r\n', 'Arellano University', 'Sta. Mesa', 'YP Volunteer', 'Not applicable', 'th-5pm,th-7pm,,f-5pm,f-7pm,', ',,,,,,,,None', 'Julius Rola', '10/2012', '11/2012', '11/2012', '00/2015', '00/2015', '05/2013', '00/2015', '00/0000', '2', '2017-03-09 02:36:13', '2017-03-09 10:36:13'),
(6, 'Ericel Czarimae', 'Not mention', 'Bana', '09177072046', '12/3/1993', 'pinkandsweets@gmail.com', 'Ericel Czarimae Bana', '529 MV Delos Santos St. Sampaloc, Manila\n', 'Arellano University', 'Sta. Mesa', 'Fourth Year', 'No', 'th-5pm,,,,,service-other', ',Communication,Kids,,Prayer Ministry,Production Design,Technical and Stage Management,Ushering,None', 'Rose Laggui', '09/2014', '09/2014', '09/2014', '00/0000', '04/2016', '03/2015', '00/0000', '00/0000', '1', '2017-03-09 16:51:41', '2017-03-09 10:42:50'),
(7, 'Ina', 'Not mention', 'Lagrama', '09155859641', '7/12/1994', 'ilagramada@gmail.com', 'Ayns Lagrama', '#2529, NRM Mansion, Legarda Street, Sampaloc, Manila\r\n', 'Arellano University', 'Sta. Mesa', 'Fourth Year', 'Yes', 'th-5pm,,f-3pm,f-5pm,,', ',,,,,,,Ushering,', 'Rose Laggui', '07/2014', '08/2014', '08/2014', '09/2015', '09/2015', '10/2015', '11/2015', '00/0000', '2', '2017-03-09 02:59:03', '2017-03-09 10:59:03'),
(8, 'John Michael', 'Not mention', 'De Guzman', '9502557550', '1/21/2000', 'Johnmichael_0258@yahoo.com', 'John Michael De Guzman', '2123 J Juan Luna St. Tondo Manila\r\n', 'Arellano University', 'Sta. Mesa', 'Senior HS', 'No', 'th-5pm,,f-3pm,,,', ',,,,,,,,None', 'John Paul Herrera', '06/2016', '08/2016', '08/2016', '08/2016', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-09 03:09:21', '2017-03-09 11:09:21'),
(9, 'Juan Emmanuel ', 'Not mention', 'Idioma', '9279557673', '3/8/1995', 'jeidioma@gmail.com', 'Juan Emmanuel Idioma', 'Mezza II Residence, Barangay Doña Imelda Quezon City\r\n', 'Arellano University', 'Sta. Mesa', 'Fourth Year', 'Yes', 'th-5pm,,f-3pm,f-5pm,,', ',,,,,,,Ushering,', 'Paul Herrera', '08/2014', '08/2014', '08/2014', '00/0000', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-09 03:19:58', '2017-03-09 11:19:58'),
(10, 'Ainara Hazel', 'Please update', 'Oxeno', '09272556221', '01/11/1999', 'hazelaina@hotmail.com', 'Please update', 'Bonifacio Drive., Tagaytay City', 'Far Eastern University', 'España', 'Second Year', 'No', 'th-5pm,,,f-5pm,,', ',,Kids,,,,,,', 'La Vinuya', '08/2012', '08/2012', '08/2012', '10/2014', '12/2015', '00/0000', '00/0000', '00/0000', '2', '2017-03-09 11:07:19', '2017-03-09 19:07:19'),
(12, 'Aira Josselle', 'Please update', 'Quito', '09152122790', '30/03/1997', 'airaquito96@yahoo.com', 'Please update', 'Blk. 10 Lot 11 San Hilarion St. Delpan, Tondo, Manila', 'Far Eastern University', 'España', 'Fourth Year', 'No', ',th-7pm,,,f-7pm,', ',,,,,Production Design,,,', 'None', '03/2014', '04/2014', '04/2014', '09/2016', '12/2015', '00/0000', '00/0000', '00/0000', '2', '2017-03-09 11:22:43', '2017-03-09 19:22:43'),
(13, 'AJ  ', 'Please update', 'Gacutan', '09058447766', '10/09/1996', 'ajgacutan1096@gmail.com', 'Please update', 'Residences @ P.Campa, Padre A3:DZ268 St., Sampaloc, Manila', 'Far Eastern University', 'España', 'Third Year', 'No', ',th-7pm,,,f-7pm,', ',,Kids,,,,,,', 'Vergel Gutierrez', '11/2013', '11/2013', '11/2013', '11/2013', '08/2015', '03/2015', '01/2016', '00/0000', '2', '2017-03-09 11:37:34', '2017-03-09 19:37:34'),
(14, 'Bianca', 'Please update', 'Abesamis', '09262576928', '05/18/1996', 'biancaabesamis0518@yahoo.com.ph', 'Please update', '10th Avenue Caloocan city', 'Far Eastern University', 'España', 'Fourth Year', 'No', 'th-5pm,,f-3pm,,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Ariana Ascuncion', '09/2014', '09/2014', '09/2014', '00/0000', '08/2015', '05/2015', '01/2016', '00/0000', '1', '2017-03-09 11:56:32', '2017-03-09 19:56:32'),
(15, 'Camille ', 'Please update', 'Paz', '09369790771', '02/17/1997', 'paz.camille14@gmail.com', 'Please update', '9720 L.Garcia St. Jetlane Village Paranaque City', 'Far Eastern University', 'España', 'Fourth Year', 'Yes', ',,,,f-7pm,', ',,,,,,,Ushering,', 'She Delos Santos', '11/2015', '11/2015', '11/2015', '01/2016', '12/2015', '00/0000', '00/0000000', '00/0000', '1', '2017-03-09 12:08:50', '2017-03-09 20:08:50'),
(16, 'Carmela', 'Please update', 'Magpile', '09053951336', '10/15/1993', 'carmelamagpile@gmail.com', 'Please update', '1E Tower 1, Avida Towers Santa Cruz Manila', 'Far Eastern University', 'España', 'YP Volunteer', 'Not applicable', ',th-7pm,,,f-7pm,', ',,,,,,,,None', 'Kristine Paul', '00/2011', '01/2012', '11/2015', '00/2012', '00/0000', '00/2014', '00/2016', '00/0000', '1', '2017-03-09 15:49:18', '2017-03-09 23:49:18'),
(17, 'Carmela', 'Please update', 'Magpile', '09053951336', '10/15/1993', 'carmelamagpile@gmail.com', 'Please update', '1E Tower 1, Avida Towers Santa Cruz Manila', 'Far Eastern University', 'España', 'YP Volunteer', 'Not applicable', ',th-7pm,,,f-7pm,', ',,,,,,,,None', 'Kristine Paul', '00/2011', '01/2012', '11/2015', '00/2012', '00/0000', '00/2014', '00/2016', '00/0000', '1', '2017-03-09 15:49:18', '2017-03-09 23:49:18'),
(18, 'Cecil', 'Please update', 'Caabay', '09279712020', '08/10/1993', 'cezcaabay@gmail.com', 'Please update', '1227 Tower 1, Sun Residences, Sta. Teresita, Quezon City', 'Far Eastern University', 'España', 'YP Volunteer', 'Not applicable', 'th-5pm,th-7pm,f-3pm,f-5pm,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Maya Reynoso', '04/2011', '04/2011', '04/2011', '00/0000', '00/0000', '00/0000', '00/0000', '00/0000', '2', '2017-03-09 16:01:26', '2017-03-10 00:01:26'),
(19, 'Clarize Melvi', 'Please update', 'Ceria', '09157661684', '11/29/1985', 'clarizeceria@gmail.com', 'Please update', '573 Mapunso St. Labuin, Pila, Laguna', 'Far Eastern University', 'España', 'YP Volunteer', 'Not applicable', ',th-7pm,,,f-7pm,', ',,,,,,,,None', 'Diane Paclian', '12/2005', '04/2007', '04/2007', '12/2015', '12/015', '04/2013', '01/2016', '08/2016', '1', '2017-03-09 16:24:06', '2017-03-10 00:24:06'),
(20, 'Donna', 'Please update', 'Villarama', '09062716150', '11/11/1993', 'donnavillarama@yahoo.com', 'Please update', '21 D. Vicencio St. San Juan City', 'Far Eastern University', 'España', 'Fourth Year', 'No', ',th-7pm,,,,', ',,,,,,,,None', 'Kristine Paul', '11/2009', '11/2009', '11/2009', '00/2010', '00/2015', '00/2013', '00/0000', '08/2013', '1', '2017-03-09 16:59:08', '2017-03-10 00:59:08'),
(21, 'Emma', 'Please update', 'Carreon', '09055743576', '12/12/1993', 'carreoemmak@gmail.com', 'Please update', '#8 Camiling St. NIA Village Tandang Sora Quezon City', 'Far Eastern University', 'España', 'YP Volunteer', 'Not applicable', 'th-5pm,,,,,', ',,,,,,,Ushering,', 'Kristine Paul', '01/2011', '01/2011', '01/2011', '11/2013', '12/2015', '00/2012', '01/2016', '00/0000', '1', '2017-03-09 17:07:22', '2017-03-10 01:07:22'),
(22, 'Erica', 'Please update', 'Reyes', '09988838823', '10/04/1996', 'ericabethreyes@gmail.com', 'Please update', '1026 Crown tower university belt, Tolentino st., Sampaloc Manila', 'Far Eastern University', 'España', 'Fourth Year', 'No', 'th-5pm,,,,f-7pm,', ',,,Music,,,,,', 'Shem Tapulao', '01/2015', '11/2014', '11/2014', '08/2015', '07/2015', '03/2015', '01/2016', '00/0000', '1', '2017-03-09 17:15:36', '2017-03-10 01:15:36'),
(23, 'Ezra', 'Please update', 'Manzano', '09153558423', '08/11/1996', 'ezrasam16@gmail.com', 'Please update', 'Blumentritt, Manila', 'Far Eastern University', 'España', 'Fourth Year', 'No', ',th-7pm,,f-5pm,f-7pm,', ',,,,,,Technical and Stage Management,,', 'OJ Mendoza', '09/2013', '09/2013', '09/2013', '07/2016', '00/000000', '00/0000', '00/0000', '00/0000', '1', '2017-03-09 17:24:24', '2017-03-10 01:24:24'),
(24, 'Ezra Micah', 'Please update', 'Dayao', '09055952072', '02/25/0000', 'ezramicah.dayao@gmail.com', 'Please update', '13 Calavite St. Brgy. Salvacion, Quezon City', 'Far Eastern University', 'España', 'Fourth Year', 'No', 'th-5pm,th-7pm,,,f-7pm,', ',,,Music,,,,,', 'None', '09/2015', '09/2015', '09/2015', '09/2015', '09/2015', '07/2016', '00/0000', '00/0000', '1', '2017-03-09 17:38:34', '2017-03-10 01:38:34'),
(25, 'Faye Hazel', 'Please update', 'Caong', '09364223291', '09/19/1996', 'fayehazel19@gmail.com', 'Please update', 'Cato Infanta Pangasinan', 'Far Eastern University', 'España', 'Fourth Year', 'Yes', 'th-5pm,,,,,', ',,Kids,,,,,,', 'Shem Tapulao', '08/2015', '09/2015', '09/2016', '09/2016', '09/2015', '09/2015', '00/0000', '00/0000', '3', '2017-03-09 20:32:17', '2017-03-10 04:32:17'),
(26, 'Frances', 'Please update', 'Marcos', '09296993529', '02/11/1998', 'marcos.francesangela@yahoo.com', 'Please update', '#56 San Fabian, Echangue, Isabela', 'Far Eastern University', 'España', 'Fourth Year', 'Yes', 'th-5pm,th-7pm,f-3pm,,f-7pm,service-other', ',,,,,,Technical and Stage Management,,', 'Shem Tapulao', '12/2014', '11/2014', '12/2014', '08/2015', '09/2015', '10/2015', '01/2016', '00/0000', '1', '2017-03-09 20:42:05', '2017-03-10 04:42:05'),
(27, 'Gio', 'Please update', 'Orozco', '09064489344', '11/21/1998', 'Gideon.Orozco@gmail.com', 'Please update', 'Blk 15 Lot16 La Residencia Subd., City of Santa Rosa Laguna', 'Far Eastern University', 'España', 'Second Year', 'No', 'th-5pm,,,,,', ',,,,,,,Ushering,', 'None', '09/2015', '11/2015', '11/2015', '00/0000', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-09 20:52:56', '2017-03-10 04:52:56'),
(28, 'Joshua Anthony', 'Please update', 'Tee', '09333608867', '06/12/2000', 'joshuaanthonyter@gmail.com', 'Please update', '1954 Visayan Ave. Samp. Mla.', 'Far Eastern University', 'España', 'Senior HS', 'No', 'th-5pm,,,f-5pm,,', ',,,Music,,,,Ushering,', 'OJ Mendoza', '07/2014', '08/2014', '08/2014', '00/0000', '00/0000', '09/2015', '00/0000', '00/0000', '1', '2017-03-09 20:59:10', '2017-03-10 04:59:10'),
(29, 'Kate', 'Please update', 'Mahilum', '09174659205', '04/15/1997', 'mahilumkate15@yahoo.com.ph', 'Please update', '278 Gen. Trias Drive Tramo St. Silangan II, Rosario,Cavite', 'Far Eastern University', 'España', 'Third Year', 'No', 'th-5pm,th-7pm,,f-5pm,f-7pm,', ',,,,,,,Ushering,', 'None', '01/2016', '01/2016', '01/2016', '00/0000', '00/0000', '08/2016', '00/0000', '00/0000', '2', '2017-03-09 21:09:22', '2017-03-10 05:09:22'),
(30, 'Kristine Luv', 'Please update', 'Paul', '09053234581', '02/02/1987', 'kluv.paul@everynationcampus.org', 'Please update', '32B Madre Silva St. Roxas District, Quezon City ', 'Far Eastern University', 'España', 'Staff', 'Not applicable', ',,f-3pm,f-5pm,,', ',,,,,,,,None', 'Mye Nunag', '05/2002', '00/2003', '00/2004', '00/0000', '00/0000', '00/0000', '00/0000', '00/2004', '1', '2017-03-09 21:15:13', '2017-03-10 05:15:13'),
(31, 'Lady Janine', 'Please update', 'Parpan', '09051241916', '10/26/1992', 'lj.parpan@gmail.com', 'Please update', '57 Unit PH Kitanlad St., Quezon City', 'Far Eastern University', 'España', 'YP Volunteer', 'Not applicable', 'th-5pm,,,,,', ',,,Music,,,,,', 'Claudette Alipio', '11/2010', '04/2011', '04/2011', '00/2014', '00/2015', '00/2015', '00/2015', '00/0000', '1', '2017-03-09 21:24:06', '2017-03-10 05:24:06'),
(32, 'Lemuel', 'Please update', 'Tacoloy', '09276161187', '09/03/1994', 'tacoloy.lemuel@gmail.com', 'Please update', '723 Ibarra St. Sampaloc Manila', 'Far Eastern University', 'España', 'YP Volunteer', 'Not applicable', 'th-5pm,th-7pm,,f-5pm,f-7pm,', ',,,,,,,Ushering,', 'AJ Romero', '11/2015', '11/2015', '11/2015', '00/0000', '08/2015', '11/2015', '00/0000', '00/0000', '1', '2017-03-09 21:33:06', '2017-03-10 05:33:06'),
(33, 'Louise Aimee', 'Please update', 'Vinuya', '09175709679', '07/04/0000', 'l.avinuya_04@yahoo.com', 'Please update', '665 Ruperto Cristobal St., Sampaloc Manila', 'Far Eastern University', 'España', 'Third Year', 'No', ',,,f-5pm,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Kristine Paul', '01/2015', '01/2015', '01/2015', '08/2015', '08/2015', '05/2016', '01/2016', '00/0000', '1', '2017-03-09 21:42:16', '2017-03-10 05:42:16'),
(34, 'Maria Gizelle', 'Please update', 'Nazareno', '09173477854', '04/15/0000', 'mgi.nazareno@yahoo.com', 'Please update', '6D 852 Dos Castillas Sampaloc Manila', 'Far Eastern University', 'España', 'YP Volunteer', 'Not applicable', 'th-5pm,,,f-5pm,f-7pm,', 'Admin Support,,,,,,,,', 'Djana Tan', '05/2011', '07/2011', '07/2011', '08/2011', '08/2015', '00/0000', '1/2016', '00/0000', '1', '2017-03-09 21:49:06', '2017-03-10 05:49:06'),
(35, 'Mary Elizabeth', 'Please update', 'Medina', '09063016475', '09/15/1997', 'maryeliz_medina@yahoo.com', 'Please update', '5 Lot11, Med Heights Subdivision Phase 1, San Jose, Rodriguez, Rizal', 'Far Eastern University', 'España', 'Fourth Year', 'No', ',,,,f-7pm,', ',,,,,,,Ushering,', 'Kristine Paul', '01/2014', '01/2014', '01/2014', '00/0000', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-09 21:56:17', '2017-03-10 05:56:17'),
(36, 'Mary Rose', 'Please update', 'Deyto', '09778226195', '10/18/1996', 'maryrose.deyto@yahoo.com', 'Please update', '226 Purok 2, Sto. Niño, Plaridel, Bulacan', 'Far Eastern University', 'España', 'Fourth Year', 'Yes', ',,,,f-7pm,', ',,,,,,,Ushering,', 'Jai Rivera', '09/2016', '09/2016', '09/2016', '09/2016', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-09 22:02:40', '2017-03-10 06:02:40'),
(37, 'Matthew', 'Please update', 'Rebote', '09266483149', '05/08/1997', 'xmcr08@gmail.com', 'Please update', 'Lot 2, Block 5, Glenrose Ave., Glenrose Subd., Brgy. Dolores, Taytay, Rizal', 'Far Eastern University', 'España', 'Third Year', 'No', 'th-5pm,,f-3pm,,,', ',,,,,,,Ushering,', 'OJ Mendoza', '09/2013', '10/2013', '10/2013', '05/2016', '00/0000', '6/2015', '01/2016', '00/0000', '1', '2017-03-09 22:11:39', '2017-03-10 06:11:39'),
(38, 'Shem ', 'Please update', 'Tapulao', '09367417322', '07/30/1993', 'shemtapulao@gmail.com', 'Please update', '#15 Villa Maria St. Sangandaan Caloocan City', 'Far Eastern University', 'España', 'Fourth Year', 'No', ',th-7pm,,f-5pm,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Maya Reynoso', '04/2011', '04/2011', '04/2011', '00/2014', '12/2015', '00/0000', '01/2016', '00/0000', '1', '2017-03-09 22:23:22', '2017-03-10 06:23:22'),
(39, 'Thea Vera', 'Please update', 'Tungbaban', '09066846243', '11/16/1996', 'tungbaban.thea@gmail.com', 'Please update', 'Rm. 409 T. Global Elite Residences, M.V. Delos Santos St., Sampaloc, Manila', 'Far Eastern University', 'España', 'Fourth Year', 'Yes', ',th-7pm,,,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Arianna Asuncion', '11/2012', '12/2012', '12/2012', '08/2015', '08/2015', '02/2014', '01/2016', '00/0000', '2', '2017-03-09 22:31:02', '2017-03-10 06:31:02'),
(40, 'Vergel', 'Please update', 'Gutierrez', '09265025768', '11/01/1993', 'vergelcgutierrez@gmail.com', 'Please update', '169 J Dangay Street, Veterans Village, Project 7, Quezon City', 'Far Eastern University', 'España', 'YP Volunteer', 'Not applicable', ',,,,,service-other', ',Communication,,,,,,,', 'Ptr. Julius Rola', '01/2012', '01/2012', '01/2012', '01/2012', '08/2015', '00/0000', '01/2015', '00/0000', '1', '2017-03-09 22:39:01', '2017-03-10 06:39:01'),
(41, 'Zena Lexa', 'Please update', 'Pantig', '09359464820', '05/22/1997', 'zenalexapantig@gmail.com', 'Please update', 'T. Global Elite Residences, MV Delos Santos Street, Sampaloc, Manila', 'Far Eastern University', 'España', 'Third Year', 'No', ',,,,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Ariana Ascuncion', '11/2014', '11/2014', '11/2014', '08/2015', '08/2015', '03/2015', '01/2016', '00/0000', '1', '2017-03-09 22:46:27', '2017-03-10 06:46:27'),
(42, 'Bryan', 'Please update', 'Del Mundo', '09155046578', '03/18/1997', 'bryan.d96@yahoo.com', 'Please update', 'Sampaloc Manila', 'National University', 'España', 'Fourth Year', 'Yes', 'th-5pm,th-7pm,,,,', ',,,,,,,Ushering,', 'Charlie Parnada', '02/2012', '06/2012', '06/2012', '09/2013', '02/2013', '04/2013', '08/2013', '00/0000', '1', '2017-03-09 22:55:09', '2017-03-10 06:55:09'),
(43, 'Maria Abegail', 'Please update', 'Abaya', '09777954647', '04/12/1992', 'abby.abaya@victory.org.ph', 'Please update', '26 Santan St., San Pedro 9 Subd., Bagbag Novaliches Quezon City', 'National University', 'España', 'YP Volunteer', 'Not applicable', ',,f-3pm,,,', ',,,,,,,,None', 'Krish Rola', '04/2008', '04/2008', '04/2008', 'Pioneer', '01/2016', '2014', '08/2015', '08/2016', '1', '2017-03-09 23:06:47', '2017-03-10 07:06:47'),
(44, 'Maria Abegail', 'Please update', 'Abaya', '09777954647', '04/12/1992', 'abby.abaya@victory.org.ph', 'Please update', '26 Santan St., San Pedro 9 Subd., Bagbag Novaliches Quezon City', 'National University', 'España', 'YP Volunteer', 'Not applicable', ',,f-3pm,,,', ',,,,,,,,None', 'Krish Rola', '04/2008', '04/2008', '04/2008', 'Pioneer', '01/2016', '2014', '08/2015', '08/2016', '1', '2017-03-09 23:06:48', '2017-03-10 07:06:48'),
(45, 'Vanessa Grace', 'Please update', 'De Leon', '09261434793', '04/07/1993', 'vanzgdl@gmail.com', 'Please update', '1485 JP Laurel St. Barangay San Miguel, Manila', 'National University', 'España', 'Fifth Year', 'No', ',,,f-5pm,,', ',,,Music,,,,,', 'Abby Abaya', '08/2011', '09/2011', '09/2011', '00/0000', '00/0000', '04/2014', '00/0000', '08/2016', '1', '2017-03-09 23:14:16', '2017-03-10 07:14:16'),
(46, 'AC   ', 'Please update', 'Ambrosio', '09179744692', '01/27/1991', 'acjanambrosio@gmail.com', 'Please update', 'U1221 KB Arizona Tower, 838 P.Campa St. Sampaloc, Manila', 'OTHER', 'España', 'YP Volunteer', 'Not applicable', 'th-5pm,,,,,service-other', ',Communication,Kids,,Prayer Ministry,Production Design,Technical and Stage Management,Ushering,None', 'Maya Reynoso', '03/2013', '05/2013', '05/2013', '08/2013', '08/2015', '09/2013', '06/2015', '08/2016', '3', '2017-03-10 16:51:08', '2017-03-10 07:22:58'),
(48, 'Carla Seline', 'Please Update', 'Najera', '09179709127', '07/22/2001', 'najera.carla05@gmail.com', 'Please Update', 'Grass Residences Tower 2 LG12 Nueva Vizcaya corner Misamis St. Brgy. Sto. Cristo Quezon City', 'University of the East', 'Mendiola', 'Junior HS', 'No', 'th-5pm,,,,,service-other', ',Communication,Kids,,Prayer Ministry,Production Design,Technical and Stage Management,Ushering,None', 'Ac Ambrosio', '09/2013', '09/2013', '10/2013', '00/0000', '00/0000', '08/2016`', 'July 2016', '00/0000', '2', '2017-03-10 18:07:08', '2017-03-10 11:26:42'),
(49, 'Roland', 'Please Update', 'Balboza', '09169654030', '04/17/1994', 'rbalboza@gmail.com', 'Please Update', 'Studio 101, U311, Dela Rosa St. Sampaloc Manila', 'University of the East', 'Mendiola', 'Fifth Year', 'Yes', ',th-7pm,,,,', ',,Kids,Music,,,,,', 'Michael Donato', '09/2013', '09/2013', '09/2013', '01/2014', '00/0000', '08/2016', '05/2016', '00/0000', '1', '2017-03-10 03:29:23', '2017-03-10 11:29:23'),
(50, 'David', 'Please update', 'Ang', '09437253694', '06/03/2000', 'dsang2000@gmail.com', 'Please update', '2424 Yangco St. Gagalangin Tondo Manila', 'OTHER', 'España', 'Senior HS', 'No', 'th-5pm,,,,,', ',,Kids,,,,,,', 'OJ Mendoza', '04/2014', '04/2014', '04/2014', '07/2015', '00/0000', '05/2014', '00/2015', '00/0000', '1', '2017-03-10 03:29:52', '2017-03-10 11:29:52'),
(51, 'Carla Seline', 'Please Update', 'Najera', '09179709127', '07/22/2001', 'najera.carla05@gmail.com', 'Please Update', 'Grass Residences Tower 2 LG12 Nueva Vizcaya corner Misamis St. Brgy. Sto. Cristo Quezon City', 'University of the East', 'Mendiola', 'Junior HS', 'No', ',,,f-5pm,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Ac Ambrosio', 'September 2013', 'September 2013', 'October 2013', '00/0000', '00/0000', 'August 2016', 'July 2016', '00/0000', '2', '2017-03-10 03:30:11', '2017-03-10 11:30:11'),
(52, 'Glyndon', 'Please update', 'Sanders', '09162780825', '08/25/1991', 'geeeesanders@gmail.com', 'Please update', '2498 Selya St Pandacan Manila', 'OTHER', 'España', 'First year', 'No', ',,,f-5pm,,', ',,,Music,,,,,', 'Ptr. Julius Rola & OJ Mendoza', '07/2011', '07/2011', '07/2011', '2015', '2015', '2012', '2015', '00/0000', '2', '2017-03-10 03:36:04', '2017-03-10 11:36:04'),
(53, 'Natalie Sigrid', 'Please Update', 'Ladlad', '09359677558', '09/17/1994', 'natsigrid@yahoo.com', 'Please Update', '5F Palace Residences, Kapilya Street, Quiapo Manila', 'Technological Institute of the Philippines', 'Mendiola', 'Fourth Year', 'No', ',,,f-5pm,f-7pm,', ',,,Music,,,,,', 'Aileen Chavez', '08/2015', '09/2015', '09/2015', '09/2015', '09/2015', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 03:38:13', '2017-03-10 11:38:13'),
(54, 'Hannah Gabrielle', 'Please update', 'Tejoso', '09266428154', '10/28/2000', 'tejosohannahgabrielle@gmail.com', 'Please update', '441 Gerona St. Tondo, Manila', 'OTHER', 'España', 'Junior HS', 'No', ',,,f-5pm,,', ',,Kids,Music,,,,,', 'AC Ambrosio', '12/2014', '01/2015', '01/2015', '05/2015', '03/2015', '07/2015', '09/2015', '00/0000', '1', '2017-03-10 03:41:57', '2017-03-10 11:41:57'),
(55, 'Alex', 'Please Update', 'Perez', '09063436051', '22/07/2001', 'alexannedraperez@gmail.com', 'Please Update', '711 Calabash Road, Sampaloc, Manila', 'Centro Escolar University', 'Mendiola', 'Senior HS', 'No', ',,,f-5pm,f-7pm,', ',,,Music,,,,,', 'Andra Pabico', '06/2013', '02/2015', '02/2015', '09/2015', '09/2015', '09/2015', '01/2016', '00/0000', '2', '2017-03-10 03:42:15', '2017-03-10 11:42:15'),
(56, 'Jann Michael', 'Please Update', 'Camaddo', '9066375998', '9/29/1995', 'jann_camaddo@yahoo.com', 'Please Update', '15A Tredia street Village East Cainta, Rizal\r\n', 'Mapua Institute of Technology', 'Intramuros', 'Fifth Year', 'No', ',,,f-5pm,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Hans Sosa', '04/2014', '08/2014', '08/2014', '03/2015', '08/2015', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 03:42:28', '2017-03-10 11:42:28'),
(57, 'Altaire Zyrah', 'Please Update', 'Sernicula', '09264077562', '10/10/1987', 'altaire.sernicula@gmail.com', 'Please Update', '3061-A Pilar St. Manuguit Tondo Manila\r\n', 'Pamantasan ng Lungsod ng Maynila', 'Intramuros', 'YP Volunteer', 'Not applicable', 'th-5pm,th-7pm,,f-5pm,f-7pm,', ',,,,,,,,None', 'Yehlen Agus', '10/2007', '11/2007', '10/2007', '01/2016', '01/2016', '00/0000', '01/2016', '08/2016', '2', '2017-03-10 03:46:49', '2017-03-10 11:46:49'),
(58, 'Princess Joy', 'Please Update', 'Eleazar', '09975712153', '04/02/1997', 'princessjoyeleazar@yahoo.com', 'Please Update', '11-A Diverside Homes Gen. T De Leon Valenzuela City', 'Technological Institute of the Philippines', 'Mendiola', 'Fourth Year', 'No', ',,,f-5pm,,', ',,,,,,,Ushering,', 'Joan Camille Tarasona', '09/2014', '09/2014', '09/2014', '00/0000', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 03:48:57', '2017-03-10 11:48:57'),
(59, 'Kailah Sonell', 'Please update', 'Absalon', '9054949986', '08/13/2002', 'kailahsonell_absalon@yahoo.com', 'Please update', '3013 Int. 92 Nagtahan St. Sampaloc, Manila', 'OTHER', 'España', 'Junior HS', 'No', ',,,f-5pm,,', ',,,,,,,,None', 'Dianne Nacu', '08/2015', '09/2015', '09/2015', '09/2015', '09/2015', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 03:51:18', '2017-03-10 11:51:18'),
(60, 'Kristelle', 'Please update', 'Corona', '09265384142', '05/11/1994', 'kristellecorona@gmail.com', 'Please update', '311 Vicente Cruz st Sampaloc Manila', 'OTHER', 'España', 'YP Volunteer', 'Not applicable', ',th-7pm,,,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Faith Canoy', '10/2013', '10/2013', '09/2013', '00/2013', '09/2015', '06/2016', '01/2016', '00/0000', '1', '2017-03-10 03:58:24', '2017-03-10 11:58:24'),
(61, 'Reymark', 'Please Update', 'Laurente', '09392596896', '11/29/1996', 'beatmio31@yahoo.com', 'Please Update', 'Block 8 Lot 17 Teofilo Juan Ville Vista Verde Caybiga Caloocan City', 'Technological Institute of the Philippines', 'Mendiola', 'Third Year', 'No', ',,f-3pm,,,', ',,,,,,,Ushering,', 'Jam Josue', '11/2015', '11/2015', '11/2015', '00/0000', '01/2015', '00/0000', '01/2015', '00/0000', '1', '2017-03-10 04:00:07', '2017-03-10 12:00:07'),
(62, 'Paulene ', 'Please update', 'Ombao', '09175329180', '05/22/1993', 'pauleneombao@gmail.com', 'Please update', 'ATSL T1 1E, Sta. Cruz, Manila', 'OTHER', 'España', 'Other', 'No', ',,,,,service-other', 'Admin Support,,,,,,,,', 'Emily Manes', '00/2010', '00/2011', '11/2011', '00/2011', '12/2015', '00/2015', '00/2016', '00/0000', '3', '2017-03-10 04:06:19', '2017-03-10 12:06:19'),
(63, 'Jay', 'Please Update', 'Ravelo', '9175998960', '6/8/1983', 'jay.ravelo@everynationcampus.org', 'Please Update', '7 Francisco Street Caloocan City, 1400\r\n', 'Mapua Institute of Technology', 'Intramuros', 'Staff', 'Not applicable', ',,f-3pm,f-5pm,f-7pm,', ',,,,,,,,None', 'CJ Nunag', '09/2001', '04/2002', '04/2002', '04/2002', 'Spiritual Family Class, July 2002', '00/0000', '03/2015', '00/0000', '2', '2017-03-10 04:06:41', '2017-03-10 12:06:41'),
(64, 'Roxette', 'Please Update', 'Malicdem', '09264567108', '05/05/1996', 'roxettemalicdem55@gmail.com', 'Please Update', '#213 lo-ilo st. Bagong Barrio Caloocan City', 'Technological Institute of the Philippines', 'Mendiola', 'Fifth Year', 'No', 'th-5pm,,,,,', ',,,,,,,,None', 'Aileen Chavez', '01/2012', '01/2012', '01/2012', '00/2012', '00/0000', '00/2013', '00/0000', '00/0000', '1', '2017-03-10 04:07:50', '2017-03-10 12:07:50'),
(65, 'Alice', 'Please update', 'Zacarias', '09069135387', '08/25/1994', 'zacarias.alice@yahoo.com', 'Please update', 'Timothy St. Multinational Village Parañaque City', 'University of Manila', 'España', 'YP Volunteer', 'Not applicable', ',,f-3pm,f-5pm,f-7pm,', ',,,,,,,Ushering,', 'Shenie Gucilatar', '09/2013', '09/2013', '09/2013', '09/2013', '8/2015', '07/2015', '00/0000', '00/0000', '1', '2017-03-10 04:12:49', '2017-03-10 12:12:49'),
(66, 'Russell', 'Please Update', 'Echipare', '09277840395', '06/17/1997', 'russellferrer1311013@gmail.com', 'Please Update', 'Sta. Rosa subdivision, Cabangan, Zambales', 'Technological Institute of the Philippines', 'Mendiola', 'Fourth Year', 'No', ',th-7pm,,,,', ',,,,,,,,None', 'Victor Megan Culla', '08/2015', '09/2015', '09/2015', '00/0000', '00/0000', '05/2016', '01/2017', '00/0000', '1', '2017-03-10 04:15:15', '2017-03-10 12:15:15'),
(67, 'Andra', 'Please Update', 'Pabico', '09267518465', '17/09/1995', 'andrapabico@gmail.com', 'Please Update', '1254 Sta. Philomena Residences, Quiapo, Manila', 'Centro Escolar University', 'Mendiola', 'Fourth Year', 'Yes', ',,,f-5pm,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Maya  Reynoso', '10/2012', '02/2013', '02/2013', '00/0000', '00/0000', '02/2014', '00/0000', '08/2016', '1', '2017-03-10 04:16:38', '2017-03-10 12:16:38'),
(68, 'Vince Isaac Peter', 'Please Update', 'Ison', '09497766847', '06/28/1999', 'ecnivnosi28@gmail.com', 'Please Update', '888 JB Miguel St., Bambang, Pasig City', 'Technological Institute of the Philippines', 'Mendiola', 'Second Year', 'No', ',,,f-5pm,,', ',,,,,,,,None', 'Jam Josue', '08/2013', '10/2013', '10/2013', '00/2014', '06/2016', '00/2015', '00/0000', '00/0000', '2', '2017-03-10 04:20:01', '2017-03-10 12:20:01'),
(69, 'Jen', 'Please Update', 'Lorico', '9363300032', '7/19/1997', 'jnvvlorico@yahoo.com', 'Please Update', '15 H P. Burgos St. Sta. Elena, Marikina City\r\n', 'Mapua Institute of Technology', 'Intramuros', 'Third Year', 'No', ',,f-3pm,,,', ',,,Music,,,,,', 'Gek Javier', '06/2012', '08/2012', '08/2012', '09/2012', '2015 (first Church Community)', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 04:20:26', '2017-03-10 12:20:26'),
(70, 'Ariel', 'Please update', 'Lajato', '09351717329', '03/27/1997', 'arieldinlajato27@gmail.com', 'Please update', 'Blk 12 Lot 12 Isarog St., Grp 2, Payatas B, Quezon City', 'University of Manila', 'España', 'Fifth Year', 'Yes', ',,f-3pm,f-5pm,f-7pm,', ',,,Music,,,,,', 'OJ Mendoza', '09/2012', '11/2012', '07/2013', '07/2015', '08/2015', '05/2015', '00/0000', '08/2016', '2', '2017-03-10 04:22:02', '2017-03-10 12:22:02'),
(71, 'Apoll', 'Please Update', 'Bolong', '09275202602', '19/09/1992', 'apollbolong@gmail.com', 'Please Update', 'North Olympus, Novaliches, Quezon City', 'Centro Escolar University', 'Mendiola', 'Fourth Year', 'No', 'th-5pm,,,,,service-other', ',Communication,Kids,,Prayer Ministry,Production Design,Technical and Stage Management,Ushering,None', 'Maya Reynoso', '03/2010', '07/2010', '07/2010', '08/2015', '08/2015', '00/0000', '01/2016', '00/0000', '1', '2017-03-10 18:32:45', '2017-03-10 12:25:55'),
(72, 'Acel Dianne', 'Please Update', 'Agdeppa', '09064966951', '12/17/1996', 'acel1996.si@gmail.com', 'Please Update', 'Block 2 Lot 35 Channel St. Addas 4 Mambog IV Village, City of Bacoor, Cavite\r\n', 'Adamson University', 'Intramuros', 'Fourth Year', 'Yes', ',th-7pm,,,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Sarah Dela Costa', '08/2014', '09/2014', '09/2014', '02/2015', '09/2015', '08/2016', '00/0000', '00/0000', '1', '2017-03-10 04:27:53', '2017-03-10 12:27:53'),
(73, 'Wally', 'Please Update', 'Tipan', '09352484046', '09/02/1997', 'wally_tipan@yahoo.com', 'Please Update', '24-A Dahlia St. Treshermanas Village, Mayamot, Antipolo City', 'Technological Institute of the Philippines', 'Mendiola', 'Fourth Year', 'No', ',th-7pm,,,,', ',,,,,,,Ushering,', 'Victor Megan Culla', '05/2015', '06/2015', '06/2016', '09/2015', '07/2015', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 04:27:58', '2017-03-10 12:27:58'),
(74, 'Ella Marie', 'Please update', 'Caballero', '09268454777', '04/21/1997', 'ellacaballero@yahoo.com', 'Please update', 'Lot 5 San Lorenzo St. Plainville Sta.Lucia Nova QC', 'University of Manila', 'España', 'Fourth Year', 'No', 'th-5pm,,,,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Shenie Gucilatar', '02/2015', '02/2015', '02/2015', '07/2015', '08/2015', '05/2015', '00/0000', '00/0000', '1', '2017-03-10 04:31:29', '2017-03-10 12:31:29'),
(75, 'Adan Archie', 'Please Update', 'Lastica', '09358619458', '10/16/1992', 'adanarchielastica@gmail.com', 'Please Update', 'Bldg. 03 U108 MRB C5 Taguig City', 'University of the East', 'Mendiola', 'YP Volunteer', 'Not applicable', ',,f-3pm,,,', ',,,,,Production Design,,,', 'Michael Timothy Abaya', '01/2010', '08/2010', '08/2010', '06/2015', '06/2015', '00/0000', '06/2015', '00/0000', '1', '2017-03-10 04:33:53', '2017-03-10 12:33:53'),
(76, 'Erwin II', 'Please Update', 'Vizco', '09063348627', '5/12/1992', 'vizcoo11@gmail.com', 'Please Update', '2137 Menandro St. Pandacan Manila\r\n', 'Adamson University', 'Intramuros', 'Fourth Year', 'Yes', 'th-5pm,th-7pm,f-3pm,,,', ',,,,,,Technical and Stage Management,,', 'Marion De Guzman', '11/2012', '11/2012', '11/2012', '01/2013', '00/2015', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 04:36:24', '2017-03-10 12:36:24'),
(77, 'Joel', 'Please Update', 'Villarba', '9952267915', '1/5/1997', 'joel_villarba@yahoo.com', 'Please Update', '13 De Aro St. Mabayuan Olongapo City, Zambales\r\n', 'Mapua Institute of Technology', 'Intramuros', 'Fourth Year', 'No', ',,,f-5pm,f-7pm,', ',,,Music,,,,,', 'Pastor Jay Ravelo', '01/2010', '04/2010', '04/2010', '08/2015', '08/2015', '07/2016', 'January 2016', '00/0000', '1', '2017-03-10 04:38:20', '2017-03-10 12:38:20'),
(78, 'Antoniette', 'Please Update', 'Cirio', '09972232412', '05/04/1994', 'panyiet@gmail.com', 'Please Update', '621-629 Dalupan St. White House Dormitory Sampaloc Manila', 'University of the East', 'Mendiola', 'YP Volunteer', 'Not applicable', ',,f-3pm,,,', ',,,,,,,Ushering,', 'Bea Tan', '02/2013', '02/2013', '02/2013', '02/2013', '11/2015', '05/2014', '10/2015', '00/0000', '2', '2017-03-10 04:40:45', '2017-03-10 12:40:45'),
(79, 'Hannah', 'Please Update', 'Carreon', '09972173927', '3/28/1997', 'hannahcarreon91@yahoo.com', 'Please Update', 'Gatpuno VFP \r\n', 'Adamson University', 'Intramuros', 'Fourth Year', 'Yes', ',,,,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Juls Cayabyab', '07/2014', '08/2014', '08/2014', '07/2015', '06/2015', '03/2015', '00/0000', '00/0000', '1', '2017-03-10 04:45:09', '2017-03-10 12:45:09'),
(80, 'Jonas', 'Please update', 'Rola', '09063436057', '08/31/1993', 'jonas.rola@gmail.com', 'Please update', '5J Caberto Mansion Dapitan St., Manila', 'University of Manila', 'España', 'YP Volunteer', 'Not applicable', ',,,,,service-other', ',,,Music,,,,,', 'OJ Mendoza', '01/2007', '04/2007', '04/2007', '08/2015', '08/2015', '00/0000', '00/0000', '08/2016', '1', '2017-03-10 04:53:45', '2017-03-10 12:53:45'),
(81, 'Bernadette Anne ', 'Please Update', 'De Guzman', '0926344807', '20/10/1996', 'adeth_deguzman07@yahoo.com.ph', 'Please Update', 'Montalban Rizal', 'Centro Escolar University', 'Mendiola', 'Fifth Year', 'No', 'th-5pm,th-7pm,,,,', ',,,Music,,,,,', 'Apoll Bolong', '00/0000', '09/2015', '09/2015', '08/2015', '08/2015', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 04:54:05', '2017-03-10 12:54:05'),
(82, 'Harold', 'Please Update', 'Balandra', '09055606674', '05/30/1995', 'harold_balandra13@yahoo.com', 'Please Update', '#403 Colorado Bldg. Manila Rivercity Residences Delas Alas St., Sta.Ana Manila\r\n', 'Adamson University', 'Intramuros', 'Fifth Year', 'Yes', 'th-5pm,th-7pm,,,,', ',,Kids,,,,,,', 'Jay Ravelo', '03/2014', '04/2014', '04/2014', '04/2014', '00/0000', '06/2014', '01/2016', '00/0000', '2', '2017-03-10 04:57:22', '2017-03-10 12:57:22'),
(83, 'Errol John', 'Please Update', 'Antonio', '09778509920', '10/05/1990', 'ejm.antonio@gmail.com', 'Please Update', '29 Bulelak St., Malanday, Marikina City', 'University of the East', 'Mendiola', 'YP Volunteer', 'Not applicable', ',th-7pm,,,,', ',,,,,,Technical and Stage Management,,', 'Timothy Abaya', '03/2015', '03/2015', '03/2015', '07/2015', '00/0000', '05/2015', '07/2016', '00/0000', '1', '2017-03-10 04:59:02', '2017-03-10 12:59:02'),
(84, 'Marc Jayson', 'Please Update', 'Galang', '9166336918', '2/23/1998', 'onelittletwo403@gmail.com', 'Please Update', 'B22 L36 Parthenon St. North Olympus Quezon City\r\n', 'Mapua Institute of Technology', 'Intramuros', 'Second Year', 'No', ',th-7pm,,,f-7pm,', ',,,,,,,,None', 'Hans Sosa', '09/2014', '09/2014', '09/2014', '11/2014', '08/', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 05:00:09', '2017-03-10 13:00:09'),
(85, 'Daphne', 'Please Update', 'Ledda', '09156062246', '05/11/1996', 'ledddaphne@gmail.com', 'Please Update', 'C311H California Garden Square, Libertad St., Mandaluyong City', 'Centro Escolar University', 'Mendiola', 'Fourth Year', 'No', ',,,f-5pm,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Andra Pabico', '07/2014', '09/2014', '09/2014', '08/2015', '00/0000', '03/2015', '01/2016', '00/0000', '1', '2017-03-10 05:03:37', '2017-03-10 13:03:37'),
(86, 'Aprillfaith', 'Please Update', 'De Vega', '09272930535', '04/24/1999', 'Princesspay24@yahoo.com', 'Please Update', '1610 Milagros St. Sta. Cruz, Manila', 'University of the East', 'Mendiola', 'Second Year', 'No', ',,f-3pm,f-5pm,f-7pm,', ',,,,,,,Ushering,', 'Antoinette Cirio', '03/2016', '09/2016', '09/2016', '00/0000', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 05:04:31', '2017-03-10 13:04:31'),
(87, 'Lindo', 'Please update', 'Estacio', '09750216701', '07/14/1995', 'lindo_estacio@yahoo.com', 'Please update', '663 2nd Avenue East Caloocan City', 'University of Manila', 'España', 'Third Year', 'No', ',,,,f-7pm,', ',,,,,,,Ushering,', 'Mark De guzman', '01/2016', '02/2015', '02/2015', '07/2015', '08/2016', '05/2015', '00/0000', '00/0000', '1', '2017-03-10 05:05:52', '2017-03-10 13:05:52'),
(88, 'Jacob', 'Please Update', 'Roldan', '09161466818', '9/9/1994', 'roctin_2809@yahoo.com', 'Please Update', '1102 Crown Tower, G tolentino St., Sampaloc, Manila\r\n', 'Adamson University', 'Intramuros', 'Fifth Year', 'Yes', ',,,f-5pm,f-7pm,', ',,,Music,,,,,', 'Ericson Dimaunahan', '04/2014', '04/2014', '04/2014', '04/2104', '08/2015', '04/2014', '08/2015', '00/0000', '3', '2017-03-10 05:09:01', '2017-03-10 13:09:01'),
(89, 'Monica Faye', 'Please Update', 'Lomabao', '9357712019', '8/30/1996', 'monicafaye30@gmail.com', 'Please Update', '810 Galicia St. Sampaloc Manila\r\n', 'Mapua Institute of Technology', 'Intramuros', 'Third Year', 'No', 'th-5pm,,,f-5pm,,', ',,,,,,,,None', 'Gek Javier', '01/2013', '02/2013', '02/2013', 'Can''t remember', '1st Batch', '1st Batch', '00/0000', '00/0000', '1', '2017-03-10 05:11:07', '2017-03-10 13:11:07'),
(90, 'Ashierven', 'Please Update', 'Foronda', '09269852846', '09/13/1994', 'ashierven@gmail.com', 'Please Update', '19A Montoya St., San Juan City', 'University of the East', 'Mendiola', 'Fourth Year', 'Yes', 'th-5pm,,,,f-7pm,', ',Communication,,,,,,,', 'Michael Timothy Abaya', '07/2012', '09/2012', '09/2012', '09/2015', '08/2015', '04/2015', '01/2016', '00/0000', '1', '2017-03-10 05:11:47', '2017-03-10 13:11:47'),
(91, 'Monica Faye', 'Please Update', 'Lomabao', '9357712019', '8/30/1996', 'monicafaye30@gmail.com', 'Please Update', '810 Galicia St. Sampaloc Manila\r\n', 'Mapua Institute of Technology', 'Intramuros', 'Third Year', 'No', 'th-5pm,,,f-5pm,,', ',,,,,,,,None', 'Gek Javier', '01/2013', '02/2013', '02/2013', 'Can''t remember', '1st Batch', '1st Batch', '00/0000', '00/0000', '2', '2017-03-10 05:11:49', '2017-03-10 13:11:49'),
(92, 'Shenie', 'Please update', 'Gucilatar', '09351165632', '09/25/0000', 'shenieyohow@yahoo.com', 'Please update', '21 A St. Vincent Brgy Holy Spirit Quezon City', 'University of Manila', 'España', 'Fifth Year', 'Yes', ',,,f-5pm,,', ',,,,,,,Ushering,', 'Venoit Hererra', '11/2012', '11/2012', '11/2012', '07/2015', '08/2015', '05/2015', '00/0000', '08/2016', '1', '2017-03-10 05:14:22', '2017-03-10 13:14:22'),
(93, 'Bai Almira Angelica', 'Please Update', 'Patagan', '09364699873', '12/27/0000', 'patanganbaialmira@yahoo.com', 'Please Update', '77-E 18th Ave. Cubao, Quezon City', 'University of the East', 'Mendiola', 'Fourth Year', 'Yes', ',,f-3pm,,,', ',,,,,,,Ushering,', 'Raveth Moneza', '06/2016', '06/2016', '06/2016', '07/2016', '07/2016', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 05:18:32', '2017-03-10 13:18:32'),
(94, 'Abigail', 'Please update', 'Obis', '09064497360', '10/29/1998', 'obisabigail@gmail.com', 'Please update', '203 Celestino St. New Niog Village, Niog 2 Bacoor City, Cavite', 'University of Santo Tomas', 'España', 'Second Year', 'No', 'th-5pm,,,,,', ',,,,,,,,None', 'None', '02/2013', '03/2013', '30/2013', '00/0000', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 05:21:21', '2017-03-10 13:21:21'),
(95, 'John Paul', 'Please Update', 'Dagdagan', '09988644672', '8/26/2016', 'johndagdagan@gmail.com', 'Please Update', '#14 Agoncillo st. Magno II Subdivision Novaliches, Quezon City\r\n', 'Adamson University', 'Intramuros', 'Fourth Year', 'No', ',,,,f-7pm,', ',,,Music,,,,,', 'Marion De Guzman', '01/2016', '04/2016', '04/2016', '07/2016', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 05:21:28', '2017-03-10 13:21:28'),
(96, 'Gracialle', 'Please Update', 'Balantakbo', '9155764720', '16/05/1992', 'gracielleberry@gamil.com', 'Please Update', 'University Tower 1, Moret St. Sampaloc Manila', 'Centro Escolar University', 'Mendiola', 'Fifth Year', 'No', 'th-5pm,,,,,', ',,,Music,,,,,', 'Apoll Bolong', '01/2013', '02/2013', '02/2013', '08/2015', '08/2015', '01/2016', '01/2016', '00/0000', '1', '2017-03-10 05:21:44', '2017-03-10 13:21:44'),
(97, 'Bea', 'Please Update', 'Tan', '09178190254', '11/04/0000', 'bea.tan@everynationcampus.org', 'Please Update', '2548 A-Oroquieta St. Sta. Cruz Manila', 'University of the East', 'Mendiola', 'Staff', 'Not applicable', ',,,,,', ',,,,,,,,', 'Mye Nunag', '00/2009', '11/2009', '11/2009', '00/0000', '00/0000', '00/0000', '00/0000', '00/0000', '4', '2017-03-10 19:28:06', '2017-03-10 13:23:21'),
(98, 'Queennie Jhoy', 'Please Update', 'Ventura', '9354907642', '1/11/1999', 'queenieeeeeeventura@yahoo.com', 'Please Update', '19-C Amuslan St. Brgy. Masambong QC\r\n', 'Mapua Institute of Technology', 'Intramuros', 'Third Year', 'No', 'th-5pm,,,,,', ',,,,,,,,None', 'Gek Javier', '09/2015', '09/2015', '09/2015', '00/0000', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 05:25:52', '2017-03-10 13:25:52'),
(99, 'Anj ', 'Please update', 'Mercado', '09275937584', '09/15/1997', 'merrkkyy@gmail.com', 'Please update', '915 SVN bldg San Antonio St. Malate Manila', 'University of Santo Tomas', 'España', 'Third Year', 'No', 'th-5pm,,,f-5pm,,', ',,,,,,Technical and Stage Management,,', 'Kristine Paul', '07/2011', '08/2011', '08/2011', '07/2011', '07/2011', '00/0000', '00/0000', '00/0000', '3', '2017-03-10 05:27:45', '2017-03-10 13:27:45'),
(100, 'Kean Kyle', 'Please Update', 'Galang', '09352199230', '11/27/1996', 'kean.galang03@gmail.com', 'Please Update', '#073 1896 St. General Trias Cavite \r\n', 'Adamson University', 'Intramuros', 'Third Year', 'No', 'th-5pm,th-7pm,,,f-7pm,', ',,,,,,Technical and Stage Management,,', 'Juls Cayabyab ', '08/2015', '09/2015', '09/2015', '09/2015', '09/2015', '02/2016', '00/0000', '00/0000', '1', '2017-03-10 05:27:48', '2017-03-10 13:27:48'),
(101, 'Charles Elmerson', 'Please Update', 'Que', '09177036506', '11/18/1994', 'Charles_Que@icloud.com', 'Please Update', 'Carissa 23, Gardenville, Baldovino St., Magsaysay Blvd., Sta. Mesa, Manila', 'University of the East', 'Mendiola', 'Fourth Year', 'Yes', ',th-7pm,,,f-7pm,', ',,,Music,,,,,', 'Jericko Del Rosario', '05/2013', '07/2013', '07/2013', '00/0000', '00/0000', '00/0000', '07/2016', '00/0000', '1', '2017-03-10 05:32:12', '2017-03-10 13:32:12'),
(102, 'Ma. Stephanie ', 'Please Update', 'Naboye', '09362453844', '11/28/1995', 'masteph.naboye@gmail.com', 'Please Update', 'Blk16 Lt. 15 Beverly Homes, Prenza II, Marilao, Bulacan \r\n', 'Adamson University', 'Intramuros', 'Fourth Year', 'No', ',,,,,service-other', ',,,,,,,,None', 'Hannah Carreon', '08/2014', '02/2015', '02/2105', '07/2016', '08/2013', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 05:32:47', '2017-03-10 13:32:47'),
(103, 'Diana', 'Please update', 'Viloria', '09174605930', '03/17/1998', 'viloriadianaa17@yahoo.com.ph', 'Please update', 'Star Garden Dormitory, 8001 I Delos Reyes St., Sampaloc, Manila', 'University of Santo Tomas', 'España', 'Third Year', 'No', 'th-5pm,,,,,', ',,,,,,,Ushering,', 'Elijah Legarda', '06/2016', '06/2016', '06/2016', '06/2016', '06/2016', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 05:34:16', '2017-03-10 13:34:16'),
(104, 'Clarisse', 'Please Update', 'Fernandez', '09169214319', '04/07/1998', 'clarissefernandez4798@yahoo.com', 'Please Update', '13-C Salary Ext. St. Barangay Sangandaan Quezon City', 'University of the East', 'Mendiola', 'Third Year', 'No', ',th-7pm,,f-5pm,f-7pm,', ',,,,,,,Ushering,', 'Bea Tan', '04/2015', '04/2015', '04/2015', '08/2015', '04/2015', '00/0000', '01/2016', '00/0000', '2', '2017-03-10 05:37:22', '2017-03-10 13:37:22'),
(105, 'Maica', 'Please Update', 'Gesmundo', '09351438368', '11/2/1997', 'maica_gesmundo@icloud.com', 'Please Update', '92 Hoteliers Village II, Bucandala V, Imus City, Cavite\r\n', 'Adamson University', 'Intramuros', 'Third Year', 'No', 'th-5pm,,,,,', ',,,,,,Technical and Stage Management,,', 'Sarah Dela Costa', '07/2014', '08/2014', '08/2014', '00/0000', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 05:39:36', '2017-03-10 13:39:36'),
(106, 'Cristina', 'Please Update', 'Maigue', '09464886869', '12/10/1994', 'maiguecristina@gmail.com', 'Please Update', '53 Victory Ave. Tatalon,  Quezon City', 'University of the East', 'Mendiola', 'YP Volunteer', 'Not applicable', ',,f-3pm,,,', ',,Kids,,,,,,', 'Bea Tan and Faith Manzano', '05/2013', '05/2013', '05/2013', '06/2013', '00/0000', '10/2014', '00/0000', '00/0000', '1', '2017-03-10 05:45:05', '2017-03-10 13:45:05'),
(107, 'Diane Samantha', 'Please update', 'Sta. Maria', '09175867395', '02/08/1999', 'dianesamanthas@gmail.com', 'Please update', 'Vizione Dormitory, GM Tolentino St, Sampaloc, Manila', 'University of Santo Tomas', 'España', 'Fourth Year', 'No', 'th-5pm,th-7pm,,,,', ',,Kids,,,,,,', 'Joy Nanasca', '01/2015', '02/2015', '02/2015', '08/2015', '00/0000', '00/0000', '02/2016', '00/0000', '1', '2017-03-10 05:45:19', '2017-03-10 13:45:19'),
(108, 'Herald', 'Please Update', 'Birung', '09158906420', '09/06/1991', 'herald.b09@gmail.com', 'Please Update', '65 Kapiligan St. Dona Imelda, Quezon City', 'Centro Escolar University', 'Mendiola', 'Other', 'Yes', 'th-5pm,,,,,', ',,,Music,,,,,', 'Mark Javier', '01/2015', '01/2015', '01/2015', '08/2015', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 05:47:43', '2017-03-10 13:47:43'),
(109, 'Marion', 'Please Update', 'Deguzman', '09066369712', '08/03/1994', 'supermarion.deguzman@gmail.com', 'Please Update', '6886 Washington Street Makati City\r\n', 'Adamson University', 'Intramuros', 'Fifth Year', 'Yes', ',,,,f-7pm,', ',,,,,,,,None', 'Jay Ravelo', '04/2012', '04/2012', '04/2012', '04/2012', '00/0000', '08/2016', '00/2015', '00/0000', '2', '2017-03-10 05:48:12', '2017-03-10 13:48:12'),
(110, 'Donna Nikka', 'Please Update', 'Dejano', '09299662006', '08/15/1994', 'donnanikkadejao@gmail.com', 'Please Update', 'Unit 310 Studio 101 Jamie Dela Rosa Street Sampaloc, Manila', 'University of the East', 'Mendiola', 'Other', 'Yes', ',th-7pm,,,,', ',,,,,,,,None', 'Bea Tan', '11/2010', '11/2010', '11/2010', '00/0000', '00/2016', '00/0000', '07/2016', '00/0000', '1', '2017-03-10 05:49:31', '2017-03-10 13:49:31'),
(111, 'Earl Christian', 'Please update', 'Pelagio', '09752123524', '09/20/1998', 'pelagioearl20@gmail.com', 'Please update', 'GSIS Metrohomes bldg. 25 b-13 pureza st. sta. mesa Manila', 'University of Santo Tomas', 'España', 'Third Year', 'No', ',,,,f-7pm,', ',,,,,,,Ushering,', 'None', '07/2016', '07/2016', '07/2016', '07/2016', '07/2016', '08/2016', '00/0000', '00/0000', '1', '2017-03-10 05:52:47', '2017-03-10 13:52:47'),
(112, 'Dustyn', 'Please Update', 'Dimaguila', '09268583762', '03/02/1993', 'dustynjor@gmail.com', 'Please Update', '1005 J.Ramos St.Ibayo,Tipas,Taguig City', 'University of the East', 'Mendiola', 'YP Volunteer', 'Not applicable', ',,f-3pm,f-5pm,,', ',,,Music,,,,,', 'Michael Timothy Abaya', '10/2010', '11/2010', '11/2010', '00/2015', '00/2015', '00/0000', '00/2016', '00/0000', '1', '2017-03-10 05:56:26', '2017-03-10 13:56:26'),
(113, 'Janine', 'Please Update', 'Quinto', '09271238329', '26/05/1995', 'janine_triplem@yahoo.com', 'Please Update', 'La Residencia Mendiola', 'Centro Escolar University', 'Mendiola', 'Fourth Year', 'Yes', 'th-5pm,,,,,', ',,,,,,Technical and Stage Management,,', 'Apoll Bolong', '00/0000', '11/2013', '11/2013', '08/2015', '00/0000', '05/2014', '01/2016', '00/0000', '1', '2017-03-10 05:58:29', '2017-03-10 13:58:29'),
(114, 'Eized', 'Please update', 'Lorenzo', '09175009793', '09/02/1997', 'eizedlorenzo@yahoo.com', 'Please update', '930 D Vicente Cruz Sampaloc Manila', 'University of Santo Tomas', 'España', 'Third Year', 'No', ',,f-3pm,f-5pm,f-7pm,', ',,Kids,,,,,Ushering,', 'None', '08/2015', '07/2016', '05/2012', '08/2015', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 06:00:02', '2017-03-10 14:00:02'),
(115, 'Gian', 'Please Update', 'Santiago', '09157531544', '07/21/1999', 'gikaysantiago21@gmail.com', 'Please Update', '0992 M. Dela Merced st. Norzagaray Bulacana', 'University of the East', 'Mendiola', 'Second Year', 'No', ',,f-3pm,f-5pm,,', ',,,,,,,Ushering,', 'Antoinette Cirio', '01/2016', '04/2016', '04/2016', '00/0000', '00/0000', '08/2016', '00/0000', '00/0000', '1', '2017-03-10 06:00:42', '2017-03-10 14:00:42'),
(116, 'Mark Steven', 'Please Update', 'Ubando', '09758671203', '7/18/1997', 'stevenubando@gmail.com', 'Please Update', 'B2 L7 Ph.2 Kabayani Rd. Balubad Settlement, Nangka, Marikina City\r\n', 'Adamson University', 'Intramuros', 'Third Year', 'No', 'th-5pm,,,f-5pm,f-7pm,', ',,,,,,,,None', 'Marion De Guzman', '12/2014', '04/2015', '04/2015', '04/2015', '04/2015', '09/2015', '11/2015', '00/0000', '1', '2017-03-10 06:01:40', '2017-03-10 14:01:40'),
(117, 'Jedalee', 'Please Update', 'Malonzo', '09166533716', '19/04/1997', 'jedaleemalonzo@gmail.com', 'Please Update', 'Legarda St. Quiapo Manila', 'Centro Escolar University', 'Mendiola', 'Fourth Year', 'No', ',th-7pm,,f-5pm,f-7pm,', ',,,,,,,Ushering,', 'Andra Pabico', '06/2015', '06/2015', '06/2015', '08/2015', '08/2015', '08/2016', '01/2016', '00/0000', '1', '2017-03-10 06:04:40', '2017-03-10 14:04:40');
INSERT INTO `members` (`member_id`, `first_name`, `middle_name`, `last_name`, `contact_number`, `birthday`, `email_address`, `facebook_name`, `complete_home_address`, `campus`, `area`, `year_level`, `graduating`, `youth_services_you_attend`, `ministry_involvement`, `name_of_your_leadership_group`, `one_2_one`, `victory_weekend`, `water_baptism`, `making_disciples`, `church_community`, `foundation_class`, `empowering_leaders`, `leadership_113`, `how_many_victory_groups_you_are_leading`, `created`, `modified`) VALUES
(118, 'Jericko Lian', 'Please Update', 'Del Rosario', '09264733394', '09/19/1995', 'jericko.lian@gmail.com', 'Please Update', '1503 Quintos St. Sampaloc, Manila', 'University of the East', 'Mendiola', 'Fourth Year', 'Yes', 'th-5pm,th-7pm,,,f-7pm,', ',,,Music,,,,,', 'Julius Rola', '01/2013', '02/2013', '02/2013', '03/2013', '08/2013', '04/2014', '01/2016', '00/0000', '3', '2017-03-10 06:05:25', '2017-03-10 14:05:25'),
(119, 'Elijah Luini', 'Please update', 'Legarda', '09175906470', '06/12/0000', 'elijahluini.legarda@gmail.com', 'Please update', '11Roxas Street Del rey Jordan Valley Brgy. Sta Quiteria CALOOCAN CITY', 'University of Santo Tomas', 'España', 'Third Year', 'No', ',th-7pm,,,,', ',,,,,,,Ushering,', 'Camille Tagunicar', '07/2014', '07/2014', '07/2014', '09/2015', '09/2016', '01/2016', '00/0000', '00/0000', '2', '2017-03-10 06:05:46', '2017-03-10 14:05:46'),
(120, 'Nigel', 'Please Update', 'Hongayo', '09756705026', '00/00/0000', 'lordaerone002@yahoo.com', 'Please Update', '366 Coral Ext. Tondo Manila\r\n', 'Adamson University', 'Intramuros', 'Fourth Year', 'No', ',th-7pm,,,f-7pm,', ',,,,,,,Ushering,', 'Harold Balandra ', '01/2016', '04/2016', '04/2016', '00/0000', '04/2016', '07/2016', '00/0000', '00/0000', '1', '2017-03-10 06:07:25', '2017-03-10 14:07:25'),
(121, 'Jesheeca Angela ', 'Maellah', 'Pimentel', '09057058700', '27/06/1998', 'jesheeca_pimentel@yahoo.com', 'Please Update', 'Quezon City', 'Centro Escolar University', 'Mendiola', 'Third Year', 'No', ',,f-3pm,f-5pm,f-7pm,', ',,,,,,,Ushering,', 'Andra Pabico', '08/2015', '09/2015', '09/2015', '00/0000', '00/0000', '00/0000', '00/0000', '00/0000', '1', '2017-03-10 06:12:14', '2017-03-10 14:12:14'),
(122, 'Jessica', 'Please Update', 'Lacopia', '09773067115', '09/13/1993', 'jessicalacopia13@gmail.com', 'Please Update', '2268 Jaime Dela Rosa St. Sampaloc Manila', 'University of the East', 'Mendiola', 'YP Volunteer', 'Not applicable', ',th-7pm,,f-5pm,f-7pm,', 'Admin Support,,,,,,,,', 'Nikki Bautista', '08/2010', '07/2011', '07/2011', '00/2015', '00/2016', '00/2016', '00/2016', '00/0000', '1', '2017-03-10 06:15:53', '2017-03-10 14:15:53'),
(123, 'Evangeline Blanquita ', 'Please update', 'Liao', '09364748097', '04/26/1997', 'blanquitaliao@gmail.com', 'Please update', '27c David Alger St., 2nd Ave., Grace Park, Caloocan City', 'University of Santo Tomas', 'España', 'Fourth Year', 'Yes', ',th-7pm,,,,', ',,,,,,Technical and Stage Management,,', 'None', '09/2014', '09/2014', '09/2014', '10/2014', '00/0000', '04/2015', '01/2016', '00/0000', '1', '2017-03-10 06:18:34', '2017-03-10 14:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=129 ;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `member_id`, `name`, `email`, `password`, `gender`, `phone`, `created`, `modified`, `status`) VALUES
(1, 0, 'admin', 'admin@gmail.com', '0eedec4121bb85efbea754e8f4ee817a', 'Male', '09771053965', '2017-03-09 01:25:09', '2017-03-09 01:25:09', '1'),
(3, 2, 'Test Fname', 'admin@gmail.com', '0eedec4121bb85efbea754e8f4ee817a', 'Female', '', '2017-03-09 02:09:16', '2017-03-09 02:09:16', '1'),
(4, 3, 'Test Fname', 'courtneybobila@gmail.com', '968c9c4fc10ee237b4aea39267a74d22', 'Female', '', '2017-03-09 05:20:37', '2017-03-09 05:20:37', '1'),
(5, 4, 'Alyssa Isobelle', 'isobelleyssa@gmail.com', '69f0ddffa62e31ac74761d570d671ba3', 'Female', '', '2017-03-09 10:26:24', '2017-03-09 10:26:24', '1'),
(6, 5, 'Benjie', 'benjie_hernane@yahoo.com', 'ca34c6c7a2d210070f2400bcee182430', 'Male', '', '2017-03-09 10:36:13', '2017-03-09 10:36:13', '1'),
(7, 6, 'Ericel Czarimae', 'pinkandsweets@gmail.com', '19d00f8033fedeaff3836164182583bb', 'Female', '', '2017-03-09 10:42:50', '2017-03-09 10:42:50', '1'),
(8, 0, 'espana', 'espana', 'e10adc3949ba59abbe56e057f20f883e', 'Male', '123456789', '2017-03-09 10:49:23', '2017-03-09 10:49:23', '1'),
(9, 0, 'stamesa', 'stamesa', 'e10adc3949ba59abbe56e057f20f883e', 'Male', '123456789', '2017-03-09 10:49:42', '2017-03-09 10:49:42', '1'),
(10, 0, 'intramuros', 'intramuros', 'e10adc3949ba59abbe56e057f20f883e', 'Male', '123456789', '2017-03-09 10:50:08', '2017-03-09 10:50:08', '1'),
(11, 0, 'mendiola', 'mendiola', 'e10adc3949ba59abbe56e057f20f883e', 'Male', '123456789', '2017-03-09 10:50:30', '2017-03-09 10:50:30', '1'),
(12, 7, 'Ina', 'ilagramada@gmail.com', 'ca32c25228429fd94ea7a7e47f2c4a6c', 'Female', '', '2017-03-09 10:59:03', '2017-03-09 10:59:03', '1'),
(13, 8, 'John Michael', 'Johnmichael_0258@yahoo.com', 'e44e7f6f9b86e5b124b65914440774bd', 'Male', '', '2017-03-09 11:09:21', '2017-03-09 11:09:21', '1'),
(14, 9, 'Juan Emmanuel ', 'jeidioma@gmail.com', '28b8c24937565a4589e651f3c74e2813', 'Male', '', '2017-03-09 11:19:58', '2017-03-09 11:19:58', '1'),
(15, 10, 'Ainara Hazel', 'hazelaina@hotmail.com', '1756b2ef589b73be53d45869185c656f', 'Female', '', '2017-03-09 19:07:19', '2017-03-09 19:07:19', '1'),
(17, 12, 'Aira Josselle', 'airaquito96@yahoo.com', '1c4ba5da2ef9749233c530f578caacf8', 'Female', '', '2017-03-09 19:22:43', '2017-03-09 19:22:43', '1'),
(18, 13, 'AJ  ', 'ajgacutan1096@gmail.com', '04790d7df8e0122f3b8d387a8fec4a36', 'Male', '', '2017-03-09 19:37:34', '2017-03-09 19:37:34', '1'),
(19, 14, 'Bianca', 'biancaabesamis0518@yahoo.com.ph', '80dbc8566eb1d6fa591b24da9d882d2a', 'Female', '', '2017-03-09 19:56:32', '2017-03-09 19:56:32', '1'),
(20, 15, 'Camille ', 'paz.camille14@gmail.com', 'ab7f5957c5601792bafff51816d4a469', 'Female', '', '2017-03-09 20:08:50', '2017-03-09 20:08:50', '1'),
(21, 16, 'Carmela', 'carmelamagpile@gmail.com', 'ae4da7174f30af56cc411fbf4fc51972', 'Female', '', '2017-03-09 23:49:18', '2017-03-09 23:49:18', '1'),
(22, 17, 'Carmela', 'carmelamagpile@gmail.com', 'ae4da7174f30af56cc411fbf4fc51972', 'Female', '', '2017-03-09 23:49:18', '2017-03-09 23:49:18', '1'),
(23, 18, 'Cecil', 'cezcaabay@gmail.com', '2c931abcedf0e2c3407011205f48bef4', 'Female', '', '2017-03-10 00:01:26', '2017-03-10 00:01:26', '1'),
(24, 19, 'Clarize Melvi', 'clarizeceria@gmail.com', '0976e5f1b3218b6092a57116dcf7e494', 'Female', '', '2017-03-10 00:24:06', '2017-03-10 00:24:06', '1'),
(25, 20, 'Donna', 'donnavillarama@yahoo.com', 'bb4c0e3786f0dee73af59449bbb4bf95', 'Female', '', '2017-03-10 00:59:08', '2017-03-10 00:59:08', '1'),
(26, 21, 'Emma', 'carreoemmak@gmail.com', 'a4d299949922a80f8e09691ff6ed3acd', 'Female', '', '2017-03-10 01:07:22', '2017-03-10 01:07:22', '1'),
(27, 22, 'Erica', 'ericabethreyes@gmail.com', 'a02a3e96c592439d7e1272b34fc815f8', 'Female', '', '2017-03-10 01:15:36', '2017-03-10 01:15:36', '1'),
(28, 23, 'Ezra', 'ezrasam16@gmail.com', 'd320f6718444d55826e66dd64d784170', 'Male', '', '2017-03-10 01:24:24', '2017-03-10 01:24:24', '1'),
(29, 24, 'Ezra Micah', 'ezramicah.dayao@gmail.com', '3558abded52bfd379cf2a04cb938ced6', 'Female', '', '2017-03-10 01:38:34', '2017-03-10 01:38:34', '1'),
(30, 25, 'Faye Hazel', 'fayehazel19@gmail.com', 'bdafc486400e74267ddedc2972452655', 'Female', '', '2017-03-10 04:32:17', '2017-03-10 04:32:17', '1'),
(31, 26, 'Frances', 'marcos.francesangela@yahoo.com', 'f083110786b9ba82528832a2b8cf30f5', 'Female', '', '2017-03-10 04:42:05', '2017-03-10 04:42:05', '1'),
(32, 27, 'Gio', 'Gideon.Orozco@gmail.com', '16ca174ad7d51cd990f3961ba1296592', 'Male', '', '2017-03-10 04:52:56', '2017-03-10 04:52:56', '1'),
(33, 28, 'Joshua Anthony', 'joshuaanthonyter@gmail.com', '62ed941e4be8b4166afd6f9a5a7c6349', 'Male', '', '2017-03-10 04:59:10', '2017-03-10 04:59:10', '1'),
(34, 29, 'Kate', 'mahilumkate15@yahoo.com.ph', 'd0dca1993f91093e24db367b39659afe', 'Female', '', '2017-03-10 05:09:22', '2017-03-10 05:09:22', '1'),
(35, 30, 'Kristine Luv', 'kluv.paul@everynationcampus.org', '82e62c9a96b94b17ed198ea9b15c4321', 'Female', '', '2017-03-10 05:15:13', '2017-03-10 05:15:13', '1'),
(36, 31, 'Lady Janine', 'lj.parpan@gmail.com', 'b078fb7707c62ef5c6440ed06971ee2a', 'Female', '', '2017-03-10 05:24:06', '2017-03-10 05:24:06', '1'),
(37, 32, 'Lemuel', 'tacoloy.lemuel@gmail.com', 'e3a586e6816ba74939707b6661a96388', 'Male', '', '2017-03-10 05:33:06', '2017-03-10 05:33:06', '1'),
(38, 33, 'Louise Aimee', 'l.avinuya_04@yahoo.com', 'f544159a3ffce1c51e74d297469cacae', 'Female', '', '2017-03-10 05:42:16', '2017-03-10 05:42:16', '1'),
(39, 34, 'Maria Gizelle', 'mgi.nazareno@yahoo.com', '0808f6aa7268f1affd6895ee17c2002e', 'Female', '', '2017-03-10 05:49:06', '2017-03-10 05:49:06', '1'),
(40, 35, 'Mary Elizabeth', 'maryeliz_medina@yahoo.com', 'fe917ac366e0d8c0c6f6fa080058a578', 'Female', '', '2017-03-10 05:56:18', '2017-03-10 05:56:18', '1'),
(41, 36, 'Mary Rose', 'maryrose.deyto@yahoo.com', '1128b6239844909f7186be1a5810a1d5', 'Female', '', '2017-03-10 06:02:40', '2017-03-10 06:02:40', '1'),
(42, 37, 'Matthew', 'xmcr08@gmail.com', 'd811347dabc6d47ec8024e8da67cc41b', 'Male', '', '2017-03-10 06:11:39', '2017-03-10 06:11:39', '1'),
(43, 38, 'Shem ', 'shemtapulao@gmail.com', 'ae556c334284fe6dc26bdd9baa2e5335', 'Female', '', '2017-03-10 06:23:22', '2017-03-10 06:23:22', '1'),
(44, 39, 'Thea Vera', 'tungbaban.thea@gmail.com', 'c5032bc6a0c062c9a5a0ce2554e0b296', 'Female', '', '2017-03-10 06:31:02', '2017-03-10 06:31:02', '1'),
(45, 40, 'Vergel', 'vergelcgutierrez@gmail.com', '0eedec4121bb85efbea754e8f4ee817a', 'Male', '', '2017-03-10 06:39:01', '2017-03-10 06:39:01', '1'),
(46, 41, 'Zena Lexa', 'zenalexapantig@gmail.com', '65153b74d2fc0408a914107d24b60127', 'Female', '', '2017-03-10 06:46:27', '2017-03-10 06:46:27', '1'),
(47, 42, 'Bryan', 'bryan.d96@yahoo.com', '4f4c0b51af09de0e2b860c4f695adf21', 'Male', '', '2017-03-10 06:55:09', '2017-03-10 06:55:09', '1'),
(48, 43, 'Maria Abegail', 'abby.abaya@victory.org.ph', '05b71afc94d335de4e3a5b7c1846cf05', 'Female', '', '2017-03-10 07:06:47', '2017-03-10 07:06:47', '1'),
(49, 44, 'Maria Abegail', 'abby.abaya@victory.org.ph', '05b71afc94d335de4e3a5b7c1846cf05', 'Female', '', '2017-03-10 07:06:48', '2017-03-10 07:06:48', '1'),
(50, 45, 'Vanessa Grace', 'vanzgdl@gmail.com', '2f59eebe8523a00451502ef81a9cff04', 'Female', '', '2017-03-10 07:14:16', '2017-03-10 07:14:16', '1'),
(51, 46, 'AC   ', 'acjanambrosio@gmail.com', '4aadafc952b49af2c1561831b4bda0d3', 'Female', '', '2017-03-10 07:22:58', '2017-03-10 07:22:58', '1'),
(53, 48, 'Carla Seline', 'najera.carla05@gmail.com', '698f538b28e38ca9cf3d0c6ae7d39446', 'Female', '', '2017-03-10 11:26:42', '2017-03-10 11:26:42', '1'),
(54, 49, 'Roland', 'rbalboza@gmail.com', '9a0b3054965269d95c1d930d993cf6cf', 'Male', '', '2017-03-10 11:29:23', '2017-03-10 11:29:23', '1'),
(55, 50, 'David', 'dsang2000@gmail.com', 'da28b3f14c6eb3c9e8bcf9a5977a4892', 'Male', '', '2017-03-10 11:29:52', '2017-03-10 11:29:52', '1'),
(56, 51, 'Carla Seline', 'najera.carla05@gmail.com', '698f538b28e38ca9cf3d0c6ae7d39446', 'Female', '', '2017-03-10 11:30:11', '2017-03-10 11:30:11', '1'),
(57, 52, 'Glyndon', 'geeeesanders@gmail.com', 'c105739d7576614c4b05e9d73c6818e8', 'Male', '', '2017-03-10 11:36:04', '2017-03-10 11:36:04', '1'),
(58, 53, 'Natalie Sigrid', 'natsigrid@yahoo.com', '116a19e830a79309164af6c1ddaf2bc8', 'Female', '', '2017-03-10 11:38:13', '2017-03-10 11:38:13', '1'),
(59, 54, 'Hannah Gabrielle', 'tejosohannahgabrielle@gmail.com', '9f87a053b8c86785de0bf070a44cc51e', 'Female', '', '2017-03-10 11:41:57', '2017-03-10 11:41:57', '1'),
(60, 55, 'Alex', 'alexannedraperez@gmail.com', 'bb915f73199a486c53dc3f551e4a7113', 'Female', '', '2017-03-10 11:42:15', '2017-03-10 11:42:15', '1'),
(61, 56, 'Jann Michael', 'jann_camaddo@yahoo.com', 'ff80421fd7269e8d13d60b98d3357379', 'Male', '', '2017-03-10 11:42:28', '2017-03-10 11:42:28', '1'),
(62, 57, 'Altaire Zyrah', 'altaire.sernicula@gmail.com', '3b67bc678b314f1c171e84fb27ca7189', 'Female', '', '2017-03-10 11:46:49', '2017-03-10 11:46:49', '1'),
(63, 58, 'Princess Joy', 'princessjoyeleazar@yahoo.com', '70c8d0807fcf0302c36e32150e41a352', 'Female', '', '2017-03-10 11:48:57', '2017-03-10 11:48:57', '1'),
(64, 59, 'Kailah Sonell', 'kailahsonell_absalon@yahoo.com', 'fce07a39774134cc67050a7e722538f6', 'Female', '', '2017-03-10 11:51:18', '2017-03-10 11:51:18', '1'),
(65, 60, 'Kristelle', 'kristellecorona@gmail.com', 'e56aff7b595876f577878a0bf5ddbc6e', 'Female', '', '2017-03-10 11:58:24', '2017-03-10 11:58:24', '1'),
(66, 61, 'Reymark', 'beatmio31@yahoo.com', '56d5e942e503ae09be11914810f3bc07', 'Male', '', '2017-03-10 12:00:07', '2017-03-10 12:00:07', '1'),
(67, 62, 'Paulene ', 'pauleneombao@gmail.com', 'b08abdf431783b4770ec8bd03ec5ed9f', 'Female', '', '2017-03-10 12:06:19', '2017-03-10 12:06:19', '1'),
(68, 63, 'Jay', 'jay.ravelo@everynationcampus.org', '1cb6da632f331eee07312beea7c59f9a', 'Male', '', '2017-03-10 12:06:41', '2017-03-10 12:06:41', '1'),
(69, 64, 'Roxette', 'roxettemalicdem55@gmail.com', '24ec3d8ab1d323e78bbf22dabaf8a7c7', 'Female', '', '2017-03-10 12:07:50', '2017-03-10 12:07:50', '1'),
(70, 65, 'Alice', 'zacarias.alice@yahoo.com', '2f076f5e5a554f2aae171c00769a3a20', 'Female', '', '2017-03-10 12:12:49', '2017-03-10 12:12:49', '1'),
(71, 66, 'Russell', 'russellferrer1311013@gmail.com', '4dab42c31962f45e51ee5a7609c02c50', 'Male', '', '2017-03-10 12:15:15', '2017-03-10 12:15:15', '1'),
(72, 67, 'Andra', 'andrapabico@gmail.com', '3378a3d32da6d48bce8ffd84d07ff197', 'Female', '', '2017-03-10 12:16:38', '2017-03-10 12:16:38', '1'),
(73, 68, 'Vince Isaac Peter', 'ecnivnosi28@gmail.com', '613868cc7c92c3d6152dec8913250b1f', 'Male', '', '2017-03-10 12:20:01', '2017-03-10 12:20:01', '1'),
(74, 69, 'Jen', 'jnvvlorico@yahoo.com', '0f8710bafc52451477b9f1e647a8d2d8', 'Female', '', '2017-03-10 12:20:26', '2017-03-10 12:20:26', '1'),
(75, 70, 'Ariel', 'arieldinlajato27@gmail.com', '44257b7a7a41008ad2b1cb0331a82afe', 'Male', '', '2017-03-10 12:22:02', '2017-03-10 12:22:02', '1'),
(76, 71, 'Apoll', 'apollbolong@gmail.com', 'd5643ee60c17e9a728087cba52abb5f9', 'Female', '', '2017-03-10 12:25:55', '2017-03-10 12:25:55', '1'),
(77, 72, 'Acel Dianne', 'acel1996.si@gmail.com', '26df25180226d8d40fc430ba627514b7', 'Female', '', '2017-03-10 12:27:53', '2017-03-10 12:27:53', '1'),
(78, 73, 'Wally', 'wally_tipan@yahoo.com', '39d67c83653cd59876bf307c3d1d03a0', 'Male', '', '2017-03-10 12:27:58', '2017-03-10 12:27:58', '1'),
(79, 74, 'Ella Marie', 'ellacaballero@yahoo.com', 'ead946875003db3ca56dcb7ae3db8a0d', 'Female', '', '2017-03-10 12:31:29', '2017-03-10 12:31:29', '1'),
(80, 75, 'Adan Archie', 'adanarchielastica@gmail.com', 'e592b57a749043f895b06daf9ba1a973', 'Male', '', '2017-03-10 12:33:53', '2017-03-10 12:33:53', '1'),
(81, 76, 'Erwin II', 'vizcoo11@gmail.com', '0e658da102abb128590f5623bd099ba7', 'Male', '', '2017-03-10 12:36:24', '2017-03-10 12:36:24', '1'),
(82, 77, 'Joel', 'joel_villarba@yahoo.com', '4e9dbacc2a4a2cc0b00009c56db6edcc', 'Male', '', '2017-03-10 12:38:20', '2017-03-10 12:38:20', '1'),
(83, 78, 'Antoniette', 'panyiet@gmail.com', 'b25f9f5ac09098b3bb79fc9b50b60b8b', 'Female', '', '2017-03-10 12:40:45', '2017-03-10 12:40:45', '1'),
(84, 79, 'Hannah', 'hannahcarreon91@yahoo.com', 'f80ec2d5fd9a18b35e0de30c59f17c8b', 'Female', '', '2017-03-10 12:45:09', '2017-03-10 12:45:09', '1'),
(85, 80, 'Jonas', 'jonas.rola@gmail.com', 'fbbd0c6eb437c558a5863319883cac57', 'Male', '', '2017-03-10 12:53:45', '2017-03-10 12:53:45', '1'),
(86, 81, 'Bernadette Anne ', 'adeth_deguzman07@yahoo.com.ph', '9582b06cc80ae0d4b583cf6042dda52e', 'Female', '', '2017-03-10 12:54:05', '2017-03-10 12:54:05', '1'),
(87, 82, 'Harold', 'harold_balandra13@yahoo.com', 'e0e4a00c02a4569a45b38592acebc32f', 'Male', '', '2017-03-10 12:57:22', '2017-03-10 12:57:22', '1'),
(88, 83, 'Errol John', 'ejm.antonio@gmail.com', 'a40f0e8a8a239764b73b0562251b093b', 'Male', '', '2017-03-10 12:59:02', '2017-03-10 12:59:02', '1'),
(89, 84, 'Marc Jayson', 'onelittletwo403@gmail.com', '222718c2c376869eb67d53af2902ddcc', 'Male', '', '2017-03-10 13:00:09', '2017-03-10 13:00:09', '1'),
(90, 85, 'Daphne', 'ledddaphne@gmail.com', 'eef285ef3d956cefb810b9073b1c112b', 'Female', '', '2017-03-10 13:03:37', '2017-03-10 13:03:37', '1'),
(91, 86, 'Aprillfaith', 'Princesspay24@yahoo.com', '171d050099d42a1de6e664b9e1113ab5', 'Male', '', '2017-03-10 13:04:32', '2017-03-10 13:04:32', '1'),
(92, 87, 'Lindo', 'lindo_estacio@yahoo.com', '7ca82c0466768c269a9813d87bdc0a64', 'Male', '', '2017-03-10 13:05:52', '2017-03-10 13:05:52', '1'),
(93, 88, 'Jacob', 'roctin_2809@yahoo.com', 'a5796ad85fc0240f1bb80b9f27d643ea', 'Male', '', '2017-03-10 13:09:01', '2017-03-10 13:09:01', '1'),
(94, 89, 'Monica Faye', 'monicafaye30@gmail.com', 'a38bbbd7451b9a38d50eed471bf0d6c6', 'Female', '', '2017-03-10 13:11:07', '2017-03-10 13:11:07', '1'),
(95, 90, 'Ashierven', 'ashierven@gmail.com', 'd273d263e1b603e0562c9a8963258eb7', 'Male', '', '2017-03-10 13:11:47', '2017-03-10 13:11:47', '1'),
(96, 91, 'Monica Faye', 'monicafaye30@gmail.com', 'a38bbbd7451b9a38d50eed471bf0d6c6', 'Female', '', '2017-03-10 13:11:49', '2017-03-10 13:11:49', '1'),
(97, 92, 'Shenie', 'shenieyohow@yahoo.com', '06bbf023f869f362f201c6260cbfb9fa', 'Female', '', '2017-03-10 13:14:22', '2017-03-10 13:14:22', '1'),
(98, 93, 'Bai Almira Angelica', 'patanganbaialmira@yahoo.com', '7f72af9740be7247490884d8d72ea33d', 'Female', '', '2017-03-10 13:18:32', '2017-03-10 13:18:32', '1'),
(99, 94, 'Abigail', 'obisabigail@gmail.com', '596345eb3d1ede73e1cfc2eb4438d897', 'Female', '', '2017-03-10 13:21:21', '2017-03-10 13:21:21', '1'),
(100, 95, 'John Paul', 'johndagdagan@gmail.com', '320a80c6306a819e4a1ad7080e58795e', 'Male', '', '2017-03-10 13:21:28', '2017-03-10 13:21:28', '1'),
(101, 96, 'Gracialle', 'gracielleberry@gamil.com', '797a68961b36cc06c77a224f7060cd3c', 'Female', '', '2017-03-10 13:21:44', '2017-03-10 13:21:44', '1'),
(102, 97, 'Bea', 'bea.tan@everynationcampus.org', '7e9be01f4024e90ee9e951c8d2a9ff1c', 'Female', '', '2017-03-10 13:23:21', '2017-03-10 13:23:21', '1'),
(103, 98, 'Queennie Jhoy', 'queenieeeeeeventura@yahoo.com', '829597f7da69bf1d3d8ad9edcc5a20bd', 'Female', '', '2017-03-10 13:25:52', '2017-03-10 13:25:52', '1'),
(104, 99, 'Anj ', 'merrkkyy@gmail.com', '162b2890aebfa052cd255310bc76d921', 'Female', '', '2017-03-10 13:27:45', '2017-03-10 13:27:45', '1'),
(105, 100, 'Kean Kyle', 'kean.galang03@gmail.com', 'fb39937db110a91d0eb094691a481feb', 'Male', '', '2017-03-10 13:27:48', '2017-03-10 13:27:48', '1'),
(106, 101, 'Charles Elmerson', 'Charles_Que@icloud.com', '664e5f227922a5ebe7b25d1ed67b9a9b', 'Male', '', '2017-03-10 13:32:12', '2017-03-10 13:32:12', '1'),
(107, 102, 'Ma. Stephanie ', 'masteph.naboye@gmail.com', 'd374c2682ed61e779d52be36cf0a8b9d', 'Female', '', '2017-03-10 13:32:47', '2017-03-10 13:32:47', '1'),
(108, 103, 'Diana', 'viloriadianaa17@yahoo.com.ph', 'daf77ecccbabbe47af451896c8f5447d', 'Female', '', '2017-03-10 13:34:16', '2017-03-10 13:34:16', '1'),
(109, 104, 'Clarisse', 'clarissefernandez4798@yahoo.com', 'c9b3b1c3253538d6eb4e84d9a43e52d2', 'Female', '', '2017-03-10 13:37:22', '2017-03-10 13:37:22', '1'),
(110, 105, 'Maica', 'maica_gesmundo@icloud.com', 'c80d5a64f684861413d35a2c1234723f', 'Female', '', '2017-03-10 13:39:36', '2017-03-10 13:39:36', '1'),
(111, 106, 'Cristina', 'maiguecristina@gmail.com', '8f9b88d23fa8f63bacc2deff992c73f2', 'Female', '', '2017-03-10 13:45:05', '2017-03-10 13:45:05', '1'),
(112, 107, 'Diane Samantha', 'dianesamanthas@gmail.com', 'bcd8daac4e5000c51dd70024b5aa254e', 'Female', '', '2017-03-10 13:45:19', '2017-03-10 13:45:19', '1'),
(113, 108, 'Herald', 'herald.b09@gmail.com', '91d0929aec352569932f6ea6aebba959', 'Male', '', '2017-03-10 13:47:43', '2017-03-10 13:47:43', '1'),
(114, 109, 'Marion', 'supermarion.deguzman@gmail.com', 'fb8715b7b87d0a44911e179f9dc91edc', 'Male', '', '2017-03-10 13:48:12', '2017-03-10 13:48:12', '1'),
(115, 110, 'Donna Nikka', 'donnanikkadejao@gmail.com', '12f65027f962e89090e4a55d881a0ba4', 'Female', '', '2017-03-10 13:49:31', '2017-03-10 13:49:31', '1'),
(116, 111, 'Earl Christian', 'pelagioearl20@gmail.com', '2ab1110137f5d9bc9af3d4035cf1e32f', 'Male', '', '2017-03-10 13:52:47', '2017-03-10 13:52:47', '1'),
(117, 112, 'Dustyn', 'dustynjor@gmail.com', '7bfb4852fd2a44fd1524d80520b867c0', 'Male', '', '2017-03-10 13:56:26', '2017-03-10 13:56:26', '1'),
(118, 113, 'Janine', 'janine_triplem@yahoo.com', '76a6944ea47dcebc0144efa4e396bdc6', 'Female', '', '2017-03-10 13:58:29', '2017-03-10 13:58:29', '1'),
(119, 114, 'Eized', 'eizedlorenzo@yahoo.com', '94886c2e2d1ea6f52c58bbc961218b3b', 'Male', '', '2017-03-10 14:00:02', '2017-03-10 14:00:02', '1'),
(120, 115, 'Gian', 'gikaysantiago21@gmail.com', 'bae9c9bd46e7e85aa46e0f968263d07c', 'Male', '', '2017-03-10 14:00:42', '2017-03-10 14:00:42', '1'),
(121, 116, 'Mark Steven', 'stevenubando@gmail.com', '55771e2f6bac03e543aabd0340023ecf', 'Male', '', '2017-03-10 14:01:40', '2017-03-10 14:01:40', '1'),
(122, 117, 'Jedalee', 'jedaleemalonzo@gmail.com', '0fe6f9e3eab5f3df57aba08990d9d722', 'Female', '', '2017-03-10 14:04:40', '2017-03-10 14:04:40', '1'),
(123, 118, 'Jericko Lian', 'jericko.lian@gmail.com', '2a8538a1bf38843756b8a9c81bd79cc7', 'Male', '', '2017-03-10 14:05:25', '2017-03-10 14:05:25', '1'),
(124, 119, 'Elijah Luini', 'elijahluini.legarda@gmail.com', '9cc8c1ee63e13c93ca01040544e12b96', 'Female', '', '2017-03-10 14:05:46', '2017-03-10 14:05:46', '1'),
(125, 120, 'Nigel', 'lordaerone002@yahoo.com', '8b6083fb11dfa8179d31cd063137d911', 'Male', '', '2017-03-10 14:07:25', '2017-03-10 14:07:25', '1'),
(126, 121, 'Jesheeca Angela ', 'jesheeca_pimentel@yahoo.com', 'a8de36e0c44203d19dc1b73306515a82', 'Female', '', '2017-03-10 14:12:14', '2017-03-10 14:12:14', '1'),
(127, 122, 'Jessica', 'jessicalacopia13@gmail.com', '7305bcd219b4f14a36ce75bca0d48088', 'Female', '', '2017-03-10 14:15:53', '2017-03-10 14:15:53', '1'),
(128, 123, 'Evangeline Blanquita ', 'blanquitaliao@gmail.com', '1bd752b2d1b0255caac0113123064467', 'Female', '', '2017-03-10 14:18:34', '2017-03-10 14:18:34', '1');

-- --------------------------------------------------------

--
-- Table structure for table `victory_groups`
--

DROP TABLE IF EXISTS `victory_groups`;
CREATE TABLE IF NOT EXISTS `victory_groups` (
  `victory_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `campus` varchar(1024) NOT NULL,
  `when_jumpstart` varchar(1024) NOT NULL,
  `how_many_times` varchar(1024) NOT NULL,
  `demographic` varchar(1024) NOT NULL,
  `number_of_victory_group_member` varchar(1024) NOT NULL,
  `member_from_outreach` int(11) NOT NULL,
  `schedule` varchar(1024) NOT NULL,
  `one_2_one` int(11) NOT NULL,
  `victory_weekend` int(11) NOT NULL,
  `water_baptism` int(11) NOT NULL,
  `making_disciples` int(11) NOT NULL,
  `church_community` int(11) NOT NULL,
  `foundation_class` int(11) NOT NULL,
  `empowering_leaders` int(11) NOT NULL,
  `leadership_113` int(11) NOT NULL,
  `do_you_have_intern` varchar(1024) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`victory_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=140 ;

--
-- Truncate table before insert `victory_groups`
--

TRUNCATE TABLE `victory_groups`;
--
-- Dumping data for table `victory_groups`
--

INSERT INTO `victory_groups` (`victory_group_id`, `member_id`, `campus`, `when_jumpstart`, `how_many_times`, `demographic`, `number_of_victory_group_member`, `member_from_outreach`, `schedule`, `one_2_one`, `victory_weekend`, `water_baptism`, `making_disciples`, `church_community`, `foundation_class`, `empowering_leaders`, `leadership_113`, `do_you_have_intern`, `created`, `modified`) VALUES
(1, 3, 'Polytechnic University of the Philippines', '03/2017', '1-3 times', '', '3', 0, 'Test Schedule', 0, 0, 0, 0, 0, 0, 0, 0, '1', '2017-03-08 21:22:08', '2017-03-09 05:22:08'),
(2, 3, 'Polytechnic University of the Philippines', '03/2017', '1-3 times', 'Senior High (Grade 11-12)', '3', 3, 'Test Schedule', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-08 21:23:12', '2017-03-09 05:23:12'),
(3, 4, 'Arellano University', '08/0000', '1-3 times', 'Mixed', '1', 5, 'Thursday/4PM/Beanleaf', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 02:28:53', '2017-03-09 10:28:53'),
(4, 5, 'Arellano University', '06/2000', '1-3 times', 'Mixed', '5', 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 02:37:33', '2017-03-09 10:37:33'),
(5, 6, 'Arellano University', '08/0000', '1-3 times', 'Mixed', '5', 0, 'Wednesday/4pm/Bean Leaf', 1, 1, 1, 0, 1, 0, 0, 0, '1', '2017-03-09 02:45:07', '2017-03-09 10:45:07'),
(6, 7, 'Arellano University', '06/2000', '4-6 times', 'College', '4', 0, 'Thursday / 2pm / Beanleaf Arellano', 2, 1, 1, 0, 0, 0, 0, 0, '1', '2017-03-09 03:01:31', '2017-03-09 11:01:31'),
(7, 8, 'Arellano University', '07/0000', 'more than 9 times', 'Senior High (Grade 11-12)', '6', 0, 'Friday/1pm/AU or Victory Ubelt', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 03:11:48', '2017-03-09 11:11:48'),
(8, 9, 'Arellano University', '08/0000', '1-3 times', 'Senior High (Grade 11-12)', '7', 0, 'Monday/ 1pm / AU', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 03:22:19', '2017-03-09 11:22:19'),
(9, 10, 'Far Eastern University', '08/2016', '1-3 times', 'Senior High (Grade 11-12)', '1', 4, 'Friday/ 5PM/ NA', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 11:10:10', '2017-03-09 19:10:10'),
(10, 10, 'Far Eastern University', '08/2016', '1-3 times', 'College', '1', 4, 'Thursday/ 11AM/ NA', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 11:13:08', '2017-03-09 19:13:08'),
(12, 13, 'Far Eastern University', '08/0000', '1-3 times', 'Senior High (Grade 11-12)', '4', 0, 'Wednesday/ 12NN/ FEU', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 11:40:15', '2017-03-09 19:40:15'),
(13, 13, 'Far Eastern University', '08/0000', '1-3 times', 'College', '7', 0, 'Tuesday/ 10:30AM/ FEU', 3, 3, 3, 1, 1, 1, 0, 0, '1', '2017-03-09 11:43:03', '2017-03-09 19:43:03'),
(14, 14, 'Far Eastern University', '00/2015', '1-3 times', 'Mixed', '10', 0, 'Thursday / 10:30AM / Mcdo ; Wednesday/ 12NN/ FEU', 1, 1, 1, 1, 1, 0, 0, 0, '1', '2017-03-09 11:59:40', '2017-03-09 19:59:40'),
(15, 15, 'Far Eastern University', '08/2015', '1-3 times', 'College', '3', 0, 'Tuesday/ 3PM/ U-belt area', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 12:14:10', '2017-03-09 20:14:10'),
(16, 17, 'Far Eastern University', '08/0000', '1-3 times', 'College', '5', 0, 'Wednesday/ 5PM/ KFC', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 15:51:07', '2017-03-09 23:51:07'),
(17, 18, 'Far Eastern University', '08/0000', '1-3 times', 'College', '3', 0, 'Wednesday/ 11AM/ Moonleaf', 1, 1, 1, 1, 0, 0, 0, 0, '1', '2017-03-09 16:03:23', '2017-03-10 00:03:23'),
(18, 19, 'OTHER', '09/0000', '1-3 times', 'College', '3', 0, 'TBA    ', 1, 1, 1, 1, 1, 0, 0, 0, '2', '2017-03-09 16:46:17', '2017-03-10 00:46:17'),
(19, 20, 'Far Eastern University', '08/0000', '1-3 times', 'College', '7', 0, 'Tuesday/ 7:30PM/ Morayta', 3, 3, 3, 1, 0, 1, 1, 0, '1', '2017-03-09 17:00:46', '2017-03-10 01:00:46'),
(20, 21, 'Far Eastern University', '01/0000', 'more than 9 times', 'College', '10', 0, 'Thursday/ 7PM', 4, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 17:08:45', '2017-03-10 01:08:45'),
(21, 22, 'Far Eastern University', '10/0000', '1-3 times', 'College', '4', 0, 'Tuesday/ 1:30PM/ Inside FEU', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 17:17:39', '2017-03-10 01:17:39'),
(22, 23, 'Far Eastern University', '04/2016', '1-3 times', 'College', '7', 0, 'Tuesday / 4pm / depends', 1, 1, 1, 0, 0, 0, 0, 0, '1', '2017-03-09 17:27:47', '2017-03-10 01:27:47'),
(23, 24, 'Far Eastern University', '08/2016', '7-9 times', 'College', '8', 0, 'Thursday/ 5pm/ Athlete''s Dormitory R.papa', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 20:26:19', '2017-03-10 04:26:19'),
(24, 25, 'Far Eastern University', '08/2016', '1-3 times', 'College', '3', 0, 'KFC    ', 1, 1, 1, 0, 1, 0, 0, 0, '1', '2017-03-09 20:34:19', '2017-03-10 04:34:19'),
(25, 26, 'Far Eastern University', '12/2015', '4-6 times', 'College', '10', 0, 'Sunday/ 1PM/ U-belt', 6, 6, 5, 0, 0, 0, 0, 0, '1', '2017-03-09 20:44:05', '2017-03-10 04:44:05'),
(26, 27, 'Far Eastern University', '08/2016', '1-3 times', 'Mixed', '7', 0, 'Tuesday/ 4pm/ Mcdo', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 20:54:50', '2017-03-10 04:54:50'),
(27, 28, 'OTHER', '12/2015', '7-9 times', 'Junior High (Grade 7-10)', '5', 0, 'Sunday/ 1OPM/ MCDO', 5, 4, 4, 2, 0, 2, 2, 0, '1', '2017-03-09 21:01:14', '2017-03-10 05:01:14'),
(28, 29, 'Far Eastern University', '03/2016', '4-6 times', 'College', '7', 0, 'Thursday/ 5pm/ Athletes Dormitory', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 21:10:36', '2017-03-10 05:10:36'),
(29, 30, 'Far Eastern University', '09/2016', '1-3 times', 'Mixed', '6', 0, 'Tuesday/ 7PM', 3, 3, 3, 3, 1, 1, 1, 0, '1', '2017-03-09 21:16:55', '2017-03-10 05:16:55'),
(30, 31, 'OTHER', '2/2016', 'more than 9 times', 'College', '4', 0, 'Tuesday/ 5PM/ St. Thomas Square', 1, 1, 1, 1, 0, 0, 0, 0, '1', '2017-03-09 21:26:31', '2017-03-10 05:26:31'),
(31, 32, 'Far Eastern University', '08/2016', '1-3 times', 'College', '7', 0, 'Wednesday/ 6pm/ FEU', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 21:34:28', '2017-03-10 05:34:28'),
(32, 33, 'Far Eastern University', '12/2015', '1-3 times', 'College', '6', 0, 'Friday/ 1:30-3:00PM/ KFC ', 1, 1, 1, 1, 1, 1, 0, 0, '1', '2017-03-09 21:43:29', '2017-03-10 05:43:29'),
(33, 34, 'Far Eastern University', '08/2016', '1-3 times', 'Senior High (Grade 11-12)', '6', 0, 'Wednesday/ 3:30PM/ FEU', 3, 3, 3, 3, 2, 0, 0, 0, '2', '2017-03-09 21:50:34', '2017-03-10 05:50:34'),
(34, 35, 'Far Eastern University', '08/2016', '1-3 times', 'College', '6', 0, 'Friday/ 3PM/ within FEU', 2, 2, 1, 0, 0, 0, 0, 0, '1', '2017-03-09 21:57:09', '2017-03-10 05:57:09'),
(35, 36, 'Far Eastern University', '08/2016', '1-3 times', 'College', '3', 0, 'Monday/ 3PM/ Mcdo', 1, 1, 1, 0, 0, 0, 0, 0, '1', '2017-03-09 22:03:54', '2017-03-10 06:03:54'),
(36, 37, 'Far Eastern University', '12/2015', '4-6 times', 'College', '6', 0, 'Thursday/ 4:30 PM/ FEU', 3, 3, 3, 3, 1, 1, 1, 0, '1', '2017-03-09 22:12:52', '2017-03-10 06:12:52'),
(37, 38, 'Far Eastern University', '08/2016', '1-3 times', 'Mixed', '4', 0, 'Thursday/ 12/ FEU', 7, 7, 7, 3, 3, 3, 0, 0, '1', '2017-03-09 22:24:45', '2017-03-10 06:24:45'),
(38, 39, 'Far Eastern University', '08/2016', '1-3 times', 'College', '3', 0, 'Saturday/ 12NN/ KFC', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 22:31:58', '2017-03-10 06:31:58'),
(39, 40, 'Far Eastern University', '08/2016', '1-3 times', 'College', '4', 0, 'Saturday/ 3PM', 2, 3, 3, 2, 2, 1, 0, 0, '1', '2017-03-09 22:40:07', '2017-03-10 06:40:07'),
(40, 41, 'Far Eastern University', '11/2016', '1-3 times', 'College', '5', 0, 'Friday 3PM Jolibee Morayta or Around Ubelt', 2, 2, 2, 1, 0, 1, 0, 0, '1', '2017-03-09 22:47:22', '2017-03-10 06:47:22'),
(41, 42, 'National University', '08/2016', '1-3 times', 'College', '3', 0, 'Wednesday/ 3pm/ NU ', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 22:56:03', '2017-03-10 06:56:03'),
(42, 44, 'National University', '06/2016', '1-3 times', 'College', '4', 0, 'Wednesday/ 5pm/ St. Thomas ', 1, 1, 1, 0, 0, 0, 0, 0, '2', '2017-03-09 23:07:51', '2017-03-10 07:07:51'),
(43, 45, 'National University', '08/2016', '1-3 times', 'Mixed', '3', 0, 'Monday/ 1:30pm/ NU', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-09 23:15:10', '2017-03-10 07:15:10'),
(44, 46, 'University of the East', '12/2015', '7-9 times', 'Junior High (Grade 7-10)', '3', 0, 'Friday / 7pm / Vicinity of St. Thomas Square', 2, 1, 1, 1, 1, 0, 0, 0, '1', '2017-03-09 23:24:19', '2017-03-10 07:24:19'),
(47, 50, 'OTHER', '12/2015', '7-9 times', 'Mixed', '1', 0, 'Sunday / 1pm / Depends', 2, 1, 1, 1, 0, 0, 0, 0, '2', '2017-03-10 03:31:40', '2017-03-10 11:31:40'),
(48, 49, 'University of the East', '08/2016', '1-3 times', 'Senior High (Grade 11-12)', '4', 0, 'Friday/ 4pm/ Around UBelt', 1, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 03:32:29', '2017-03-10 11:32:29'),
(49, 51, 'University of the East', 'June 2016', '7-9 times', 'Junior High (Grade 7-10)', '7', 0, 'Wednesday 2pm St Thomas', 0, 0, 0, 0, 0, 0, 0, 0, '1', '2017-03-10 03:33:07', '2017-03-10 11:33:07'),
(50, 51, 'University of the East', 'June 2016', '7-9 times', 'Junior High (Grade 7-10)', '7', 0, 'Wednesday 2pm St Thomas', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 03:33:35', '2017-03-10 11:33:35'),
(51, 52, 'OTHER', '8/2016', '1-3 times', 'Junior High (Grade 7-10)', '3', 0, 'Tuesday/ 2:15PM/ NTC', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 03:37:47', '2017-03-10 11:37:47'),
(52, 53, 'Technological Institute of the Philippines', '12/2015', '7-9 times', 'College', '4', 0, 'Wednesday/2:30-3:30/TIP Casal', 3, 3, 3, 3, 1, 0, 0, 0, '1', '2017-03-10 03:41:24', '2017-03-10 11:41:24'),
(53, 54, 'OTHER', '12/2015', 'more than 9 times', 'Junior High (Grade 7-10)', '5', 0, 'Sunday / 1 PM / McDo', 4, 3, 3, 0, 2, 2, 0, 0, '1', '2017-03-10 03:44:21', '2017-03-10 11:44:21'),
(54, 55, 'Centro Escolar University', '06/2016', '7-9 times', 'Senior High (Grade 11-12)', '5', 0, 'Monday/4pm/School Grounds', 1, 1, 1, 0, 0, 0, 0, 0, '1', '2017-03-10 03:44:37', '2017-03-10 11:44:37'),
(55, 56, 'Mapua Institute of Technology', 'December 2016', '1-3 times', 'College', '3', 0, 'Monday 3 pm Mapua', 2, 0, 0, 0, 0, 0, 0, 0, '1', '2017-03-10 03:47:07', '2017-03-10 11:47:07'),
(56, 58, 'Technological Institute of the Philippines', '07/2016', '4-6 times', 'College', '5', 0, 'Monday/12:30-1:30/TIP Arlegui Campus', 1, 1, 1, 0, 0, 0, 0, 0, '1', '2017-03-10 03:50:08', '2017-03-10 11:50:08'),
(57, 57, 'OTHER', '08/2016', '1-3 times', 'Senior High (Grade 11-12)', '4', 0, 'Monday/3PM/7-11 St. Jude', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 03:51:25', '2017-03-10 11:51:25'),
(58, 59, 'OTHER', '9/2016', '1-3 times', 'Junior High (Grade 7-10)', '3', 0, 'Please update', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 03:51:59', '2017-03-10 11:51:59'),
(59, 56, 'Mapua Institute of Technology', 'December 2016', '1-3 times', 'College', '3', 0, 'Monday 3 pm Mapua', 2, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 03:52:26', '2017-03-10 11:52:26'),
(60, 55, 'OTHER', '12/2016', 'more than 9 times', 'Junior High (Grade 7-10)', '4', 0, 'Sunday/1pm/St. Thomas Square', 2, 2, 2, 0, 2, 0, 0, 0, '1', '2017-03-10 03:52:44', '2017-03-10 11:52:44'),
(61, 57, 'OTHER', '07/2016', '1-3 times', 'College', '4', 0, 'Saturday/5PM/Mc Donalds Morayta', 4, 4, 4, 4, 0, 1, 0, 0, '1', '2017-03-10 03:58:40', '2017-03-10 11:58:40'),
(62, 60, 'OTHER', '09/2016', '1-3 times', 'College', '3', 0, 'Saturday/ 12nn/ KFC or  Welcome', 2, 2, 1, 0, 0, 0, 0, 0, '1', '2017-03-10 04:00:00', '2017-03-10 12:00:00'),
(63, 61, 'Technological Institute of the Philippines', '07/2016', '4-6 times', 'College', '5', 0, 'Friday/ 2:30/ TIP Garden', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:01:27', '2017-03-10 12:01:27'),
(64, 62, 'OTHER', '08/2016', '1-3 times', 'Mixed', '3', 0, 'Sunday/ 3PM', 1, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:07:29', '2017-03-10 12:07:29'),
(65, 48, 'University of the East', '06/2016', '7-9 times', 'Junior High (Grade 7-10)', '7', 0, 'Wednesday 2pm St Thomas', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:08:53', '2017-03-10 12:08:53'),
(66, 63, 'Mapua Institute of Technology', '08/2016', '7-9 times', 'College', '4', 0, 'Thursday/10am/Bayleaf', 4, 0, 0, 0, 0, 0, 0, 0, '1', '2017-03-10 04:09:02', '2017-03-10 12:09:02'),
(67, 64, 'Technological Institute of the Philippines', '01/2016', '1-3 times', 'College', '3', 0, 'Thursday / 4:30 /TIP', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:09:34', '2017-03-10 12:09:34'),
(68, 48, 'University of the East', '08/2016', '1-3 times', 'Junior High (Grade 7-10)', '7', 0, 'Thursday 4pm st thomas', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:09:50', '2017-03-10 12:09:50'),
(69, 63, 'Mapua Institute of Technology', '08/2016', '7-9 times', 'College', '4', 0, 'Thursday/10am/Bayleaf', 4, 4, 4, 4, 3, 2, 0, 0, '2', '2017-03-10 04:11:28', '2017-03-10 12:11:28'),
(70, 65, 'University of Manila', '06/2016', '4-6 times', 'College', '5', 0, 'Friday/ 11AM/ Mcdo', 2, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:14:53', '2017-03-10 12:14:53'),
(71, 66, 'Technological Institute of the Philippines', '07/2016', '4-6 times', 'College', '3', 0, 'Wednesday/3pm/Casal grounds', 1, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:16:28', '2017-03-10 12:16:28'),
(72, 67, 'Centro Escolar University', '12/2016', 'more than 9 times', 'College', '8', 0, 'Wednesday / 4:30PM / Mcdo Mendiola', 6, 3, 3, 3, 0, 0, 0, 0, '1', '2017-03-10 04:18:45', '2017-03-10 12:18:45'),
(73, 68, 'Technological Institute of the Philippines', '08/2016', '1-3 times', 'College', '3', 0, 'Wednesday / 9:30am / T.I.P. School Grounds', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:21:27', '2017-03-10 12:21:27'),
(74, 68, 'OTHER', '06/2016', '4-6 times', 'Mixed', '4', 0, 'Sunday / 11:30am / Pasig', 2, 1, 1, 0, 1, 0, 0, 0, '2', '2017-03-10 04:23:22', '2017-03-10 12:23:22'),
(75, 70, 'University of Manila', '07/2016', 'more than 9 times', 'Mixed', '6', 0, 'Monday/ 3:00-4:30PM/ Santa''s Eatery', 4, 4, 3, 0, 0, 0, 0, 0, '1', '2017-03-10 04:24:19', '2017-03-10 12:24:19'),
(76, 69, 'Mapua Institute of Technology', '12/2015', '1-3 times', 'College', '4', 0, 'Wed/3PM/Mapua', 3, 1, 1, 0, 0, 0, 0, 0, '2', '2017-03-10 04:25:02', '2017-03-10 12:25:02'),
(77, 71, 'MIXED', '12/2016', 'more than 9 times', 'College', '6', 0, 'Monday 4pm', 4, 4, 4, 2, 3, 2, 0, 0, '1', '2017-03-10 04:28:45', '2017-03-10 12:28:45'),
(78, 73, 'Technological Institute of the Philippines', '06/2016', '4-6 times', 'College', '3', 0, 'Monday/2pm/TIP', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:28:58', '2017-03-10 12:28:58'),
(79, 72, 'Adamson University', '07/2016', '1-3 times', 'College', '3', 0, 'Mon/2-3pm/Adamson Grounds', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:29:31', '2017-03-10 12:29:31'),
(80, 74, 'University of Manila', '07/2016', '4-6 times', 'College', '6', 0, 'Friday/ 10:30AM/ UM Acatour', 3, 3, 3, 0, 0, 1, 0, 0, '1', '2017-03-10 04:36:03', '2017-03-10 12:36:03'),
(81, 75, 'University of the East', '12/2015', '4-6 times', 'College', '4', 0, 'Saturday/11am/Mcdo P.Campa', 1, 1, 1, 1, 1, 1, 0, 0, '2', '2017-03-10 04:36:05', '2017-03-10 12:36:05'),
(82, 76, 'Adamson University', '08/2016', '1-3 times', 'College', '3', 0, 'Friday/Morning/Adamson', 3, 3, 3, 1, 1, 1, 1, 0, '2', '2017-03-10 04:39:26', '2017-03-10 12:39:26'),
(83, 77, 'Mapua Institute of Technology', '08/2016', '1-3 times', 'College', '4', 0, 'Wednesday/ 12pm / Intramuros Walls', 2, 1, 1, 0, 1, 0, 0, 0, '1', '2017-03-10 04:41:09', '2017-03-10 12:41:09'),
(84, 78, 'University of the East', '12/2015', 'more than 9 times', 'College', '7', 0, 'Tuesday / 6pm / Sip & Toast', 7, 6, 6, 6, 5, 2, 2, 0, '1', '2017-03-10 04:42:32', '2017-03-10 12:42:32'),
(85, 78, 'University of Manila', '08/2016', '1-3 times', 'Senior High (Grade 11-12)', '3', 0, 'Tuesday / 1pm / BooRock Cafe', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:46:42', '2017-03-10 12:46:42'),
(86, 79, 'Adamson University', '06/2016', '4-6 times', 'College', '4', 0, 'Mon/1onwards/adamson', 3, 1, 1, 0, 0, 0, 0, 0, '2', '2017-03-10 04:48:35', '2017-03-10 12:48:35'),
(87, 81, 'Centro Escolar University', '01/206', '7-9 times', 'College', '3', 0, 'Monday 3:30PM', 1, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 04:56:37', '2017-03-10 12:56:37'),
(88, 80, 'University of Manila', '4/2016', '7-9 times', 'College', '3', 0, 'Sunday/ 3PM/ KFC', 2, 2, 2, 0, 0, 0, 0, 0, '1', '2017-03-10 04:58:37', '2017-03-10 12:58:37'),
(89, 82, 'Adamson University', '06/2016', '4-6 times', 'College', '4', 0, 'Wednesday/10am/Mcdo San Marcelino', 4, 4, 4, 4, 4, 4, 1, 0, '1', '2017-03-10 04:59:46', '2017-03-10 12:59:46'),
(90, 83, 'University of the East', '06/2016', 'more than 9 times', 'College', '6', 0, 'Monday/ 7pm/ UE Manila', 3, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:00:20', '2017-03-10 13:00:20'),
(91, 82, 'Adamson University', '07/2016', '4-6 times', 'College', '1', 5, 'Monday/3pm/SM Manila', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:02:57', '2017-03-10 13:02:57'),
(92, 84, 'Mapua Institute of Technology', '08/2016', '1-3 times', 'College', '3', 0, 'Friday / 1:30pm / Campus', 2, 1, 1, 0, 0, 0, 0, 0, '2', '2017-03-10 05:03:01', '2017-03-10 13:03:01'),
(93, 86, 'University of the East', '08/2016', '1-3 times', 'Senior High (Grade 11-12)', '4', 0, 'Tueday / 1pm / Boo Rock', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:05:46', '2017-03-10 13:05:46'),
(94, 85, 'Centro Escolar University', 'December 2016', 'more than 9 times', 'College', '6', 0, 'Tuesday 5PM Mashitta', 5, 4, 4, 3, 1, 0, 0, 0, '1', '2017-03-10 05:06:14', '2017-03-10 13:06:14'),
(95, 87, 'University of Manila', '07/2016', '4-6 times', 'College', '3', 0, 'Wednesday/ 3PM/ Santa''s Eatery', 0, 3, 3, 0, 1, 0, 0, 0, '1', '2017-03-10 05:07:27', '2017-03-10 13:07:27'),
(96, 88, 'Adamson University', '07/2016', '7-9 times', 'College', '4', 0, 'Friday / 11 am / Mcdonalds', 3, 3, 3, 3, 2, 3, 3, 0, '1', '2017-03-10 05:10:41', '2017-03-10 13:10:41'),
(97, 90, 'University of the East', '06/2016', '7-9 times', 'College', '3', 0, 'Thursday / 7pm / KFC', 1, 1, 1, 0, 0, 0, 0, 0, '1', '2017-03-10 05:13:11', '2017-03-10 13:13:11'),
(98, 91, 'Mapua Institute of Technology', '04/2016', '4-6 times', 'College', '3', 0, 'Tues/1:30/Mapua Canteen', 2, 2, 2, 0, 0, 0, 0, 0, '2', '2017-03-10 05:14:30', '2017-03-10 13:14:30'),
(99, 88, 'Adamson University', '06/2016', '1-3 times', 'College', '3', 0, 'Monday/6:30pm / Mcdonalds', 3, 3, 3, 0, 0, 0, 0, 0, '2', '2017-03-10 05:14:46', '2017-03-10 13:14:46'),
(100, 92, 'University of Manila', '8/2016', '1-3 times', 'College', '7', 0, 'Wednesday/ 10:30AM/ UM Acatour', 1, 1, 1, 0, 0, 0, 0, 0, '1', '2017-03-10 05:16:27', '2017-03-10 13:16:27'),
(101, 88, 'Philippine Normal University', '08/2016', '1-3 times', 'College', '3', 0, 'Monday/ 5pm / mcdonalds', 2, 2, 2, 0, 0, 0, 0, 0, '1', '2017-03-10 05:16:51', '2017-03-10 13:16:51'),
(102, 93, 'University of the East', '08/2016', '1-3 times', 'College', '3', 0, 'Friday / 12:40pm / Ubelt', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:19:25', '2017-03-10 13:19:25'),
(103, 96, 'Centro Escolar University', '12/2016', '7-9 times', 'College', '4', 0, 'Thursday 11am', 2, 1, 0, 0, 0, 0, 0, 0, '1', '2017-03-10 05:23:24', '2017-03-10 13:23:24'),
(104, 94, 'University of Santo Tomas', '08/2016', '1-3 times', 'College', '4', 0, 'Tuesday/ 6PM/ Plaza Mayor', 1, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:23:49', '2017-03-10 13:23:49'),
(105, 95, 'Adamson University', '08/2016', '1-3 times', 'College', '3', 0, 'Friday/2pm/Mcdonalds', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:23:49', '2017-03-10 13:23:49'),
(106, 97, 'University of the East', '08/2016', '1-3 times', 'College', '4', 0, 'Tuesay, 1PM, Recto', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:24:32', '2017-03-10 13:24:32'),
(107, 97, 'University of the East', '08/2016', '1-3 times', 'Senior High (Grade 11-12)', '3', 0, 'Thursday, 1PM, UE', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:25:46', '2017-03-10 13:25:46'),
(108, 97, 'University of the East', '02/2016', 'more than 9 times', 'College', '7', 0, 'Friday, 11AM, Espana', 2, 2, 2, 0, 0, 0, 0, 0, '2', '2017-03-10 05:27:17', '2017-03-10 13:27:17'),
(109, 99, 'University of Santo Tomas', '8/2016', '1-3 times', 'College', '4', 0, 'Friday/ 2:30PM/UST Area', 3, 1, 2, 0, 0, 0, 0, 0, '2', '2017-03-10 05:28:49', '2017-03-10 13:28:49'),
(110, 100, 'Adamson University', '03/2016', '4-6 times', 'College', '3', 0, 'Thursday/12:30pm/AdU', 1, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:28:59', '2017-03-10 13:28:59'),
(111, 98, 'Mapua Institute of Technology', '10/2016', '7-9 times', 'College', '3', 0, 'Thursday/12pm/Mapua', 3, 1, 1, 0, 0, 0, 0, 0, '1', '2017-03-10 05:29:09', '2017-03-10 13:29:09'),
(112, 102, 'Adamson University', '06/2016', '4-6 times', 'College', '3', 0, 'tuesday/2:00-3:00p.m/Sv canteen', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:33:46', '2017-03-10 13:33:46'),
(113, 101, 'University of the East', '07/2016', '4-6 times', 'College', '5', 0, 'Tuesdays/1pm/Mcdo Recto', 3, 2, 2, 0, 1, 0, 0, 0, '2', '2017-03-10 05:33:50', '2017-03-10 13:33:50'),
(114, 104, 'University of the East', '12/2015', '7-9 times', 'College', '8', 0, 'Thursday / 4pm / Amo Yamie P. Noval', 2, 2, 1, 0, 0, 0, 0, 0, '1', '2017-03-10 05:38:16', '2017-03-10 13:38:16'),
(115, 103, 'University of Santo Tomas', '08/2016', '1-3 times', 'College', '5', 0, 'Thursday / 5:30pm / Restaurants around UST', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:39:25', '2017-03-10 13:39:25'),
(116, 104, 'University of the East', '07/2016', '1-3 times', 'Senior High (Grade 11-12)', '4', 0, 'Thursday / 11am / Greenwich', 1, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:40:33', '2017-03-10 13:40:33'),
(117, 105, 'Adamson University', '11/2016', '1-3 times', 'College', '3', 0, 'Friday/11-12pm/AdU', 2, 1, 1, 1, 0, 0, 0, 0, '1', '2017-03-10 05:42:25', '2017-03-10 13:42:25'),
(118, 107, 'University of Santo Tomas', '10/2016', '4-6 times', 'College', '4', 0, 'Saturday/ 1pm', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:46:09', '2017-03-10 13:46:09'),
(119, 106, 'University of the East', '07/2016', '1-3 times', 'Senior High (Grade 11-12)', '7', 0, 'Wednesday /3:00PM/UE FD 508', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:46:22', '2017-03-10 13:46:22'),
(120, 110, 'University of the East', '06/2016', '7-9 times', 'College', '6', 0, 'Sunday/ 5pm/ Starbucks P. Noval', 6, 6, 6, 0, 0, 0, 0, 0, '1', '2017-03-10 05:50:36', '2017-03-10 13:50:36'),
(121, 109, 'Adamson University', '01/2016', 'more than 9 times', 'College', '4', 0, 'Monday/6pm/mcdoAdu', 2, 1, 1, 1, 0, 1, 1, 0, '2', '2017-03-10 05:50:45', '2017-03-10 13:50:45'),
(122, 108, 'Centro Escolar University', '06/2016', '4-6 times', 'College', '3', 0, 'Sunday 5pm Around Victory Ubelt ', 2, 1, 1, 1, 1, 0, 1, 1, '1', '2017-03-10 05:50:54', '2017-03-10 13:50:54'),
(123, 109, 'Adamson University', '06/2016', '7-9 times', 'College', '4', 0, 'Tuesday/12pm/b.a canteen', 4, 4, 4, 3, 2, 3, 4, 0, '1', '2017-03-10 05:52:55', '2017-03-10 13:52:55'),
(124, 111, 'University of Santo Tomas', '08/2016', '1-3 times', 'Mixed', '4', 0, 'Monday/ 10PM/ Plaza Mayor', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 05:54:16', '2017-03-10 13:54:16'),
(125, 109, 'Adamson University', '06/2016', '4-6 times', 'College', '3', 0, 'Wednesday/9am/sv canteen', 2, 2, 2, 2, 2, 1, 2, 0, '2', '2017-03-10 05:57:31', '2017-03-10 13:57:31'),
(126, 112, 'University of the East', '08/2016', '1-3 times', 'Senior High (Grade 11-12)', '4', 0, 'Thursday/3pm/UE', 1, 1, 1, 0, 0, 0, 0, 0, '2', '2017-03-10 05:57:37', '2017-03-10 13:57:37'),
(127, 113, 'Centro Escolar University', '08/2016', '1-3 times', 'College', '6', 0, 'Saturday 4pm', 4, 2, 2, 0, 2, 0, 0, 0, '2', '2017-03-10 06:00:06', '2017-03-10 14:00:06'),
(128, 114, 'University of Santo Tomas', '01/2016', '1-3 times', 'College', '4', 0, 'Thursday/ 4pm/ Quadri', 1, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 06:01:51', '2017-03-10 14:01:51'),
(129, 115, 'University of the East', '08/2016', '1-3 times', 'Senior High (Grade 11-12)', '3', 0, 'Tuesday/1pm/BooRock Cafe', 1, 1, 1, 1, 1, 1, 1, 1, '2', '2017-03-10 06:01:55', '2017-03-10 14:01:55'),
(130, 116, 'Adamson University', '12/2015', '4-6 times', 'College', '3', 0, 'Monday/ 5pm / Around Adamson', 1, 1, 1, 0, 0, 0, 0, 0, '2', '2017-03-10 06:03:10', '2017-03-10 14:03:10'),
(131, 117, 'Centro Escolar University', '01/2016', 'more than 9 times', 'College', '3', 0, 'Saturday 4pm', 1, 1, 1, 1, 1, 1, 1, 0, '1', '2017-03-10 06:06:13', '2017-03-10 14:06:13'),
(132, 118, 'University of the East', '12/2015', '7-9 times', 'College', '5', 0, 'Tues 1-2:30pm / Mcdo recto', 2, 2, 2, 2, 0, 1, 1, 0, '1', '2017-03-10 06:06:40', '2017-03-10 14:06:40'),
(133, 119, 'University of Santo Tomas', '8/2016', '4-6 times', 'Mixed', '8', 0, 'Saturday/ 11 am / UST', 4, 3, 3, 2, 1, 2, 0, 0, '1', '2017-03-10 06:07:28', '2017-03-10 14:07:28'),
(134, 120, 'Adamson University', '09/2016', '1-3 times', 'College', '3', 0, 'Wednesday/11am/Mcdo', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 06:08:21', '2017-03-10 14:08:21'),
(135, 118, 'University of the East', '06/2016', '4-6 times', 'College', '3', 0, '2:30pm', 1, 1, 1, 0, 0, 0, 0, 0, '2', '2017-03-10 06:09:00', '2017-03-10 14:09:00'),
(136, 118, 'University of the East', '07/2016', '4-6 times', 'Senior High (Grade 11-12)', '5', 0, 'Tues 10am / Restaurants near UE', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 06:11:07', '2017-03-10 14:11:07'),
(137, 121, 'Centro Escolar University', '01/2016', '7-9 times', 'College', '3', 0, 'Monday 4pm', 0, 0, 0, 0, 0, 0, 0, 0, '2', '2017-03-10 06:13:31', '2017-03-10 14:13:31'),
(138, 122, 'University of the East', '06/2016', 'more than 9 times', 'College', '5', 0, 'Tuesday/7:30pm/Dcream Gastamb', 4, 4, 3, 3, 2, 0, 0, 0, '1', '2017-03-10 06:18:06', '2017-03-10 14:18:06'),
(139, 123, 'University of Santo Tomas', '8/2016', '1-3 times', 'College', '6', 0, 'Saturday/ 4pm/ Plaza Mayor', 5, 4, 4, 2, 0, 2, 0, 0, '1', '2017-03-10 06:20:15', '2017-03-10 14:20:15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
