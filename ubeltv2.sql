-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2017 at 09:18 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ubeltv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `campuses`
--

CREATE TABLE `campuses` (
  `id` int(11) NOT NULL,
  `code` varchar(1024) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campuses`
--

INSERT INTO `campuses` (`id`, `code`, `name`, `created`, `modified`) VALUES
(1, 'ADU', 'Adamson University', '2017-02-18 01:26:43', '2017-02-18 01:26:43'),
(2, 'AU', 'Arellano University', '2017-02-18 01:26:59', '2017-02-18 01:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('325a0e0036dd2641ae9c36bd880793542343561e', '::1', 1487360085, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438373336303038303b);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interns`
--

CREATE TABLE `interns` (
  `intern_id` int(11) NOT NULL,
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
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `first_name` varchar(1024) NOT NULL,
  `middle_name` varchar(1024) NOT NULL,
  `last_name` varchar(1024) NOT NULL,
  `contact_number` varchar(1024) NOT NULL,
  `birthday` date NOT NULL,
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
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `first_name`, `middle_name`, `last_name`, `contact_number`, `birthday`, `email_address`, `facebook_name`, `complete_home_address`, `campus`, `area`, `year_level`, `graduating`, `youth_services_you_attend`, `ministry_involvement`, `name_of_your_leadership_group`, `one_2_one`, `victory_weekend`, `water_baptism`, `making_disciples`, `church_community`, `foundation_class`, `empowering_leaders`, `leadership_113`, `how_many_victory_groups_you_are_leading`, `created`, `modified`) VALUES
(1, 'Hanna Marie', 'cortez', 'Natividad', '9173384133', '0000-00-00', 'honeynatividad@gmail.com', 'Dags Natividad', 'Block 33 Lot 8 Enlisted Personnel V', 'Adamson University', 'Intramuros', 'Staff', 'Not applicable', 'th-5pm,th-7pm,,,,', 'Admin Support,Communication,,,,,,,', 'First Last', '02/2017', '01/2017', '02/2017', '02/2017', '02/2017', '02/2017', '02/2017', '02/2017', '1', '2017-02-25 13:00:40', '2017-02-25 21:00:40'),
(2, 'Edgar', 'Cortez', 'Natividad', '9154209315', '0000-00-00', 'hanna@petbookph.com', 'Hanna Natividad', 'Block 33 Lot 8 Enlisted Personnel V', 'Adamson University', 'Sta Mesa', 'Staff', 'Not applicable', 'th-5pm,th-7pm,f-3pm,f-5pm,,', 'Admin Support,Communication,Kids,Music,Prayer Ministry,Production Design,Technical and Stage Management,Ushering,', 'Hanna Marie Natividad', '02/2017', '02/2017', '02/2017', '02/2017', '02/2017', '02/2017', '02/2017', '02/2017', '1', '2017-02-25 13:10:01', '2017-02-25 21:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `phone`, `created`, `modified`, `status`) VALUES
(1, 'Hanna Marie', 'honeynatividad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Female', '', '2017-02-25 21:00:40', '2017-02-25 21:00:40', '1'),
(2, 'Edgar', 'hanna@petbookph.com', 'e10adc3949ba59abbe56e057f20f883e', 'Male', '', '2017-02-25 21:10:01', '2017-02-25 21:10:01', '1');

-- --------------------------------------------------------

--
-- Table structure for table `victory_groups`
--

CREATE TABLE `victory_groups` (
  `victory_group_id` int(11) NOT NULL,
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
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `victory_groups`
--

INSERT INTO `victory_groups` (`victory_group_id`, `member_id`, `campus`, `when_jumpstart`, `how_many_times`, `demographic`, `number_of_victory_group_member`, `member_from_outreach`, `schedule`, `one_2_one`, `victory_weekend`, `water_baptism`, `making_disciples`, `church_community`, `foundation_class`, `empowering_leaders`, `leadership_113`, `do_you_have_intern`, `created`, `modified`) VALUES
(1, 1, 'Adamson University', 'August 2016', '4-6 times', 'Junior High (Grade 7-10)', '1', 0, 'dddddddd', 1, 1, 1, 1, 1, 1, 1, 1, '2', '2017-02-25 13:01:48', '2017-02-25 21:01:48'),
(2, 2, 'Adamson University', 'January 2017', '1-3 times', 'Junior High (Grade 7-10)', '1', 1, 'Mon/3pm/KFC', 1, 1, 1, 1, 1, 1, 1, 1, '2', '2017-02-25 13:15:38', '2017-02-25 21:15:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campuses`
--
ALTER TABLE `campuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interns`
--
ALTER TABLE `interns`
  ADD PRIMARY KEY (`intern_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `victory_groups`
--
ALTER TABLE `victory_groups`
  ADD PRIMARY KEY (`victory_group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campuses`
--
ALTER TABLE `campuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `interns`
--
ALTER TABLE `interns`
  MODIFY `intern_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `victory_groups`
--
ALTER TABLE `victory_groups`
  MODIFY `victory_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
