-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 12, 2015 at 12:50 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_angularjs_pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `mobile`, `created_at`) VALUES
(1, 'Piyush', 'Piyush@gmail.com', '1234567899', '2015-07-11 21:58:50'),
(2, 'A', 'a@gmail.com', '1234567896', '2015-07-11 21:58:50'),
(3, 'B', 'b@gmail.com', '7894561236', '2015-07-11 22:02:32'),
(4, 'C', 'c@gmail,com', '785461236', '2015-07-11 22:02:32'),
(5, 'D', 'd@gmail.com', '7894561235', '2015-07-11 22:02:32'),
(6, 'E', 'e@gmail.com', '7894561234', '2015-07-11 22:02:32'),
(7, 'F', 'f@gmail.com', '7458961235', '2015-07-11 22:02:32'),
(8, 'G', 'g@gmail.com', '7894561235', '2015-07-11 22:02:32'),
(9, 'H', 'h@gmail.com', '1234567895', '2015-07-11 22:02:32'),
(10, 'I', 'i@gmail.com', '7894561235', '2015-07-11 22:02:32'),
(11, 'J', 'j@gmail.com', '1234567895', '2015-07-11 22:02:32'),
(12, 'K', 'k@gmail.com', '1234567895', '2015-07-11 22:02:32'),
(13, 'L', 'l@gmail.com', '1234567895', '2015-07-11 22:31:25'),
(14, 'M', 'm@gmail.com', '1234567895', '2015-07-11 22:31:25');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
