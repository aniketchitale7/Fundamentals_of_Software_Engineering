-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2016 at 04:00 PM
-- Server version: 5.6.15-log
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fundamentals`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `designationId` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `name`, `dateofbirth`, `gender`, `designation`, `designationId`) VALUES
('aniket-chitale@uiowa.edu', 'b4ae7bc84f83c68803a709b0ee2a513d', 'Aniket Chitale', '0000-00-00', 'Male', 'Admin', ''),
('ankur@gmail.com', 'e104c000ba2bf871deada58d00203f70', 'Ankur Shrivastava', '0000-00-00', 'Male', 'User', ''),
('ankita@gmail.com', '69dd76453e98c9db98083a3a019b05fa', 'Ankita Ankita', '0000-00-00', 'Female', 'User', ''),
('abc@gmail.com', 'a141c47927929bc2d1fb6d336a256df4', 'Abc Abc', '2016-03-10', 'Male', 'User', ''),
('aj@gmail.com', '232d9526f27b67ecac487604a430f7a0', 'Ajinkya Kulkarni', '0000-00-00', 'Male', 'User', ''),
('piyush@gmail.com', '6d31ebfd9579f5bbfbba63b659618e26', 'piyus as', '0000-00-00', 'Male', 'User', ''),
('asevil17@gmail.com', '86fd6a031b9bf0c9568abb91e8a3dba0', 'Aniket Chitale', '0000-00-00', 'Male', 'User', ''),
('anshul@gmail.com', '5e9920f2005695936eeee4fd20195427', 'Anshul Gupta', '0000-00-00', 'Male', 'User', ''),
('aasda@gmail.com', 'd9f6e636e369552839e7bb8057aeb8da', 'Adad asdasdasd', '0000-00-00', 'Male', 'User', ''),
('ak@gmail.com', 'bc9be5bb0291dbc10dc1689c30cf0fe1', 'ak aa', '0000-00-00', 'Male', 'User', ''),
('aaa@gmail.com', 'd9f6e636e369552839e7bb8057aeb8da', 'Ann asdsa', '0000-00-00', 'Male', 'User', ''),
('arina@gmail.com', '1404ee74dc01b81ecbd3f87587aaf64d', 'Arina Grande', '2016-03-22', 'Female', 'User', '');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `last_activity` varchar(200) NOT NULL,
  `session_id` varchar(200) NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`last_activity`, `session_id`) VALUES
('38', '4e365994-4666-4e0d-87d7-d5cf5f8955a1'),
('39', '5e809857-6282-4251-8eb8-28da8dec0fe9'),
('40', '95a6cc13-ba60-423f-ad79-f78ef5ad3007'),
('40', '42365425-2bcf-4d03-b8a0-77958471c032'),
('41', '81fa03fa-2239-4d64-88fc-474317e93154'),
('49', 'af5e279e-f9ef-4642-9865-82ca48246120'),
('52', 'dd1995af-d469-4b85-8cb5-1451227ae440'),
('53', 'b91169dc-3f35-4171-96ee-4b414c62db95'),
('55', 'b4a461df-b752-47eb-8bca-6e5b3cc68086'),
('06', '066513e7-8439-4812-aa13-640596af6db1'),
('08', 'b90595db-47c2-42e6-8078-8bf26824953b'),
('10', '5fe9ffb3-3ece-42fc-840f-0b57998725c7'),
('10', '0a86ef79-3b96-4204-9ce2-196769846d21'),
('11', 'b9479e70-40de-412a-a833-9f4d922620c8');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
