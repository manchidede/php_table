-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 21, 2018 at 02:56 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.1.17-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpform`
--

-- --------------------------------------------------------

--
-- Table structure for table `formtable`
--

CREATE TABLE `formtable` (
  `id` int(11) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `about` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formtable`
--

INSERT INTO `formtable` (`id`, `firstname`, `lastname`, `email`, `phonenumber`, `address`, `about`, `username`, `password`, `gender`) VALUES
(1, 'Christian', 'Ubuntu', 'Kinate@olotusquare.co', '09078274850', 'I will tell you later, first of all, make I enter Garrison.', 'I am the dev lead, fellowship sq.', 'Kinate', 'Ubuntusq', 'Male'),
(2, 'Cals', 'Chidiebele', 'Olotu@devsq.co', '08063483130', 'Near tony\'s house. I dont know the name biko.', 'Lazy Nigerian youth. Including you reading this. LOl..', 'Chidi', 'Mypass', 'Male'),
(3, 'Lian', 'Tonye', 'lian.devsq@olotu.co', '080673638475', 'Isiokpo junction, as if you are going to Rumola, Porthacourt.', 'Dnt ping me without his consent. Lol', 'C-queen', 'queen', 'Female'),
(4, 'Hoppy', 'Ken', 'hoppy.devsq@olotu.co', '07073847598', 'Near elekaya, as if you are going to alakaya, Porthacourt.', 'I am fine, thank you.', 'Hoppy', 'ken', 'Female'),
(5, 'Phil', 'Shaprapra', 'Philos.dvsq@olotu.co', '070485773934', '1 Khana Street, Dline, Portharcourt.', 'I am me. Dont get it twisted.', 'Philomena', 'phil', 'Male'),
(6, 'hjgjhghgjh', 'ghjbghjg', 'hjghjghj', 'ghghjgh', 'ghjgjhghjg', 'jhghjghjg', 'jhiuhkjh', 'jghjg', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(20) NOT NULL,
  `address` text NOT NULL,
  `about_yourself` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_name`, `first_name`, `last_name`, `gender`, `password`, `status`, `email`, `phone`, `address`, `about_yourself`) VALUES
(1, '$usern', '$firstname', '$lastname', '$gender', '$passn', 0, '$email', 0, '$address', '$about'),
(2, 'kl;', ';k', 'll;k', 'No gender', '16ec114932520d2b9c18a28121d515af', 0, ';lkml', 90, 'klkl;l', 'll;kl'),
(3, 'kjkl', 'lklk', 'kl', 'Male', 'a2bf84aad6c3f75024931d9459b2a2d5', 0, 'jkjkl', 90, 'jlk', 'klk'),
(4, 'kmkll;', '', '', 'No gender', 'd41d8cd98f00b204e9800998ecf8427e', 0, 'lmlm.', 9, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formtable`
--
ALTER TABLE `formtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `formtable`
--
ALTER TABLE `formtable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
