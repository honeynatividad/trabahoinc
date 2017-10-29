-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2017 at 01:51 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trabahov4`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(11) NOT NULL,
  `member_type` varchar(128) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `middle_name` varchar(128) NOT NULL,
  `nick_name` varchar(128) NOT NULL,
  `facebook_name` varchar(128) NOT NULL,
  `youtube_name` varchar(128) NOT NULL,
  `instagram_name` varchar(128) NOT NULL,
  `contact_number` varchar(128) NOT NULL,
  `birthday` varchar(128) NOT NULL,
  `email_address` varchar(128) NOT NULL,
  `gender` varchar(128) NOT NULL,
  `nationality` varchar(128) NOT NULL,
  `elementary` varchar(128) NOT NULL,
  `elementary_name` varchar(128) NOT NULL,
  `highschool` varchar(128) NOT NULL,
  `highschool_name` varchar(128) NOT NULL,
  `vocational` varchar(128) NOT NULL,
  `vocational_name` varchar(128) NOT NULL,
  `college` varchar(128) NOT NULL,
  `college_name` varchar(128) NOT NULL,
  `post_graduate` varchar(128) NOT NULL,
  `post_graduate_name` varchar(128) NOT NULL,
  `company_name` varchar(128) NOT NULL,
  `location` varchar(128) NOT NULL,
  `length_of_stay` varchar(128) NOT NULL,
  `position` varchar(128) NOT NULL,
  `skills` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `member_type`, `first_name`, `last_name`, `middle_name`, `nick_name`, `facebook_name`, `youtube_name`, `instagram_name`, `contact_number`, `birthday`, `email_address`, `gender`, `nationality`, `elementary`, `elementary_name`, `highschool`, `highschool_name`, `vocational`, `vocational_name`, `college`, `college_name`, `post_graduate`, `post_graduate_name`, `company_name`, `location`, `length_of_stay`, `position`, `skills`, `status`, `created`, `modified`) VALUES
(1, '', 'test', 'test', 'test', 'test', 'test', 'test', '', 'test', '0000-00-00', 'test', 'male', 'test', 'test', '', 'test', '', 'test', '', 'test', '', 'test', '', 'test', 'test', 'test', 'test', 'test', 0, '2017-10-29 02:35:59', '2017-10-29 02:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email_address` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  `activation_code` varchar(256) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
