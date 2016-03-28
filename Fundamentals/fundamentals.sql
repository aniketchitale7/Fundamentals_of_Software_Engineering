-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2016 at 02:53 AM
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
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `C_Id` varchar(10) NOT NULL,
  `C_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`C_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`C_Id`, `C_Name`) VALUES
('C0001', 'Electronics'),
('C0002', 'Furniture');

-- --------------------------------------------------------

--
-- Table structure for table `category_subcategory`
--

CREATE TABLE IF NOT EXISTS `category_subcategory` (
  `cat_Id` varchar(10) NOT NULL,
  `sub_Id` varchar(10) NOT NULL,
  PRIMARY KEY (`cat_Id`,`sub_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_subcategory`
--

INSERT INTO `category_subcategory` (`cat_Id`, `sub_Id`) VALUES
('C0001', 'SC0001');

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
('arina@gmail.com', '1404ee74dc01b81ecbd3f87587aaf64d', 'Arina Grande', '2016-03-22', 'Female', 'User', ''),
('gracern@gmail.com', '726c0bcffcce2008a046c84a729c95b8', 'Gracw Rein', '2016-03-15', 'Female', 'Manager', '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `P_Id` varchar(10) NOT NULL,
  `P_CategoryId` varchar(50) NOT NULL,
  `P_SubCategoryId` varchar(50) NOT NULL,
  `P_Supplier` varchar(50) NOT NULL,
  `P_Quantity` varchar(10) NOT NULL,
  `P_Price` varchar(10) NOT NULL,
  `P_Description` varchar(1000) NOT NULL,
  PRIMARY KEY (`P_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`P_Id`, `P_CategoryId`, `P_SubCategoryId`, `P_Supplier`, `P_Quantity`, `P_Price`, `P_Description`) VALUES
('P0001', 'C0001', 'SC0001', 'S0001', '5', '1000', 'Black 17 inch Laptop'),
('P0002', 'C0001', 'SC0002', 'S0002', '10', '500', 'Desktops');

-- --------------------------------------------------------

--
-- Table structure for table `product1`
--

CREATE TABLE IF NOT EXISTS `product1` (
  `productId` varchar(100) NOT NULL,
  `productName` varchar(100) NOT NULL,
  `productCategory` varchar(100) NOT NULL,
  `productSubcategory` varchar(100) NOT NULL,
  `productVendor` varchar(100) NOT NULL,
  `productQuantity` varchar(100) NOT NULL,
  `productPrice` varchar(100) NOT NULL,
  `productDescription` varchar(1000) NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product1`
--

INSERT INTO `product1` (`productId`, `productName`, `productCategory`, `productSubcategory`, `productVendor`, `productQuantity`, `productPrice`, `productDescription`) VALUES
('p0001', 'dell laptops', 'electronics', 'computers', 'dell', '10', '500', 'black dell laptop'),
('p0002', 'dell laptops', 'electronics', 'computers', 'dell', '10', '500', 'black dell laptop'),
('p0003', 'Apple laptops', 'electronics', 'computers', 'Apple', '20', '1000', 'white Apple laptop'),
('p0004', 'chair', 'electronics', 'furniture', 'steller', '100', '50', 'cusion chairs'),
('p0005', 'dell chargers', 'electronics', 'computers', 'dell', '10', '50', 'black dell xperia chargers'),
('p0006', 'Microsoft word', 'electronics', 'softwares', 'Microsoft', '100', '50', 'Microsoft word licences'),
('p0007', 'Hp Desktop', 'Electronics', 'Computers', 'HP', '10', '300', 'old Desktop'),
('p0008', 'grabage Trash', 'Furniture', 'Trashcan', 'toter', '10', '10', 'Old');

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

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `Sc_Id` varchar(10) NOT NULL,
  `Sc_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Sc_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`Sc_Id`, `Sc_Name`) VALUES
('SC0001', 'Laptops');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory_supplier`
--

CREATE TABLE IF NOT EXISTS `subcategory_supplier` (
  `sc_Id` varchar(10) NOT NULL,
  `supplier_Id` varchar(10) NOT NULL,
  PRIMARY KEY (`sc_Id`,`supplier_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory_supplier`
--

INSERT INTO `subcategory_supplier` (`sc_Id`, `supplier_Id`) VALUES
('SC0001', 'S0001');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `S_Id` varchar(10) NOT NULL,
  `S_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`S_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`S_Id`, `S_Name`) VALUES
('S0001', 'Dell');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
