-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2018 at 01:46 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsbm`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `email`, `username`, `password`) VALUES
(1, 'shamikakarunarathne@gmail.com', 'admin1', 'nsbm123'),
(2, 'sashendridulanga34@gmail.com', 'admin2', 'nsbm123');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(3) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `intake` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `ayear` varchar(4) NOT NULL,
  `adristrict` varchar(100) NOT NULL,
  `asub1` varchar(100) NOT NULL,
  `are1` varchar(4) NOT NULL,
  `asub2` varchar(100) NOT NULL,
  `are2` varchar(4) NOT NULL,
  `asub3` varchar(100) NOT NULL,
  `are3` varchar(4) NOT NULL,
  `payment` float NOT NULL DEFAULT '0',
  `sub1` varchar(100) NOT NULL,
  `sub2` varchar(100) NOT NULL,
  `sub3` varchar(100) NOT NULL,
  `sub4` varchar(100) NOT NULL,
  `sub5` varchar(100) NOT NULL,
  `sub6` varchar(100) NOT NULL,
  `sub7` varchar(100) NOT NULL,
  `sub8` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--
/*
INSERT INTO `student` (`sid`, `sname`, `nic`, `email`, `address`, `gender`, `intake`, `phone`, `faculty`, `ayear`, `adristrict`, `asub1`, `are1`, `asub2`, `are2`, `asub3`, `are3`, `payment`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `sub8`) VALUES
(1, 'Sasanka Karunarathne', '957272690V', 'shamikakarunarathne@gmail.com', 'No:224/B/1,Pallemulla,halloluwa', 'Female', 'July', '0710885933', 'School of Computing', '2015', 'Kandy', 'Combine Maths', 'A', 'Physics', 'B', 'Chemistry', 'C', 0, '', '', '', '', '', '', '', ''),
(2, 'Heshani Basnayaka', '976582701V', 'hesh97@gmail.com', 'No34/B,Borupana Rd,Rathmalana', 'Female', 'February', '0778912400', 'School of Business', '2016', '', '', '', '', '', '', '', 0, '', '', '', '', '', '', '', '');
*/
--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
