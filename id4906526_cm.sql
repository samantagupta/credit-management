-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 28, 2018 at 07:14 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `id4906526_cm`
--
CREATE DATABASE IF NOT EXISTS `id4906526_cm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `id4906526_cm`;

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
  `from_email` varchar(50) NOT NULL,
  `to_email` varchar(50) NOT NULL,
  `credits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`from_email`, `to_email`, `credits`) VALUES
('kalitatridip@gmail.com', 'deybalram@gmail.com', 50),
('khushi@gmail.com', 'sharmapriya@yahoo.com', 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `credits` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `credits`) VALUES
(1, 'balram dey', 'deybalram@gmail.com', 150),
(2, 'prakash jha', 'jhaprakash@yahoo.com', 200),
(3, 'tridip kalita', 'kalitatridip@gmail.com', 0),
(4, 'khushboo agarwal', 'khushi@gmail.com', 0),
(5, 'Santosh Kumar', 'kumarsantosh@gmail.com', 500),
(6, 'Priya Sharma', 'sharmapriya@yahoo.com', 300);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
