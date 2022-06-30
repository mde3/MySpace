-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 07:15 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_space`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(2, 18, 1, 'comment again', 'suge_knight_759064', '2022-06-20 14:52:04'),
(3, 18, 1, 'comment agin2\r\n', 'suge_knight_759064', '2022-06-20 15:02:18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(12, 1, 'No', 'pexels-luis-nÃºÃ±ez-131816.jpg.61', '2022-06-15 20:39:28'),
(13, 1, 'New Car', 'pexels-mike-116675.jpg.36', '2022-06-15 20:41:34'),
(14, 1, 'lorem14', '', '2022-06-15 20:42:15'),
(17, 1, '                    Testing4                ', '', '2022-06-17 17:50:38'),
(18, 1, 'cometn test', '', '2022-06-17 20:30:00'),
(19, 2, 'I just joined in, hello', '', '2022-06-20 16:34:44'),
(20, 3, 'new here', '', '2022-06-22 19:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(1, 'Suge', 'Knight', 'suge_knight_759064', 'Hello MySpace.This is my default status!', '...', 'sugeknight12345678', 'suge@gmail.com', 'Kenya', 'Male', '1965-12-04', 'Suge-Knight.jpg.8', 'pexels-luis-nÃºÃ±ez-131816 (1).jpg.49', '2022-06-14 23:05:43', 'verified', 'yes', 'Iwanttoputading intheuniverse.'),
(2, 'David', 'Opati', 'david_opati_151399', 'Hello MySpace.This is my default status!', '...', '9632963223dfshsghsh', 'davidopati70@gmail.com', 'Kenya', 'Male', '2003-04-03', 'logo6.png.31', 'default_cover.jpg', '2022-06-20 09:09:04', 'verified', 'yes', 'Iwanttoputading intheuniverse.'),
(3, 'Tony', 'Montana', 'tony_mont_275014', 'Actor of ScarFace', 'Married', 'tonymontana', 'tonymon@gmail.com', 'Kenya', 'Male', '1968-02-12', 'head_red.png', 'default_cover.jpg', '2022-06-22 18:01:03', 'verified', 'yes', 'Vini');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `msg_body` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_from`, `msg_body`, `date`, `msg_seen`) VALUES
(1, 2, 1, 'hello', '2022-06-20 17:56:38', 'no'),
(2, 2, 1, 'hello\r\n', '2022-06-22 17:29:34', 'no'),
(3, 2, 1, 'hello\r\n', '2022-06-22 17:29:48', 'no'),
(4, 2, 1, 'how is it going', '2022-06-22 17:29:57', 'no'),
(5, 1, 2, 'all good', '2022-06-22 17:30:11', 'no'),
(6, 2, 1, 'okay', '2022-06-22 17:30:30', 'no'),
(7, 1, 2, 'yeah', '2022-06-22 17:30:50', 'no'),
(8, 1, 2, 'yeah', '2022-06-22 17:30:55', 'no'),
(9, 1, 2, 'have you done the cat?', '2022-06-22 17:31:14', 'no'),
(10, 2, 1, 'which cat?', '2022-06-22 17:31:32', 'no'),
(11, 1, 2, 'have you done the cat?', '2022-06-22 17:32:56', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
