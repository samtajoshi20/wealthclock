-- phpMyAdmin SQL Dump
-- version 4.6.5.1deb3+deb.cihar.com~trusty.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2016 at 08:28 PM
-- Server version: 5.6.33-0ubuntu0.14.04.1
-- PHP Version: 7.0.13-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wealthclock`
--

-- --------------------------------------------------------

--
-- Table structure for table `wc_city`
--

DROP TABLE IF EXISTS `wc_city`;
CREATE TABLE `wc_city` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `stateId` int(20) NOT NULL,
  `status` int(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wc_city`
--

INSERT INTO `wc_city` (`id`, `name`, `stateId`, `status`, `createdDate`, `updatedDate`) VALUES
(1, 'Indore', 1, 1, '0000-00-00', '0000-00-00'),
(2, 'Ujjain', 1, 1, '0000-00-00', '0000-00-00'),
(3, 'Bhopal', 1, 1, '0000-00-00', '0000-00-00'),
(4, 'Dhar', 1, 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `wc_company`
--

DROP TABLE IF EXISTS `wc_company`;
CREATE TABLE `wc_company` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `companyEmail` varchar(50) NOT NULL,
  `companyPassword` text NOT NULL,
  `status` tinyint(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_contact`
--

DROP TABLE IF EXISTS `wc_contact`;
CREATE TABLE `wc_contact` (
  `id` int(11) NOT NULL,
  `contactName` varchar(45) DEFAULT NULL,
  `contactCompanyGroup` varchar(45) DEFAULT NULL,
  `contactPlace` varchar(45) DEFAULT NULL,
  `contactLabel` varchar(45) DEFAULT NULL,
  `contactEmail` varchar(45) DEFAULT NULL,
  `contactAddress` text,
  `contactPinCode` varchar(45) DEFAULT NULL,
  `contactCity` int(11) DEFAULT NULL,
  `contactSourceType` varchar(45) DEFAULT NULL,
  `contactSourceStatus` varchar(45) DEFAULT NULL,
  `contactSourceDetails` varchar(45) DEFAULT NULL,
  `contactBusinessValue` varchar(45) DEFAULT NULL,
  `contactRelationshipManager` varchar(45) DEFAULT NULL,
  `contactAccompanyRM` varchar(45) DEFAULT NULL,
  `contactProducts` varchar(45) DEFAULT NULL,
  `contactInformation` varchar(45) DEFAULT NULL,
  `contactType` varchar(45) DEFAULT NULL,
  `contactStatus` varchar(45) DEFAULT NULL,
  `contactFollowDate` varchar(45) DEFAULT NULL,
  `contactFollowTime` varchar(45) DEFAULT NULL,
  `contactNotify` varchar(45) DEFAULT NULL,
  `contactRemark` varchar(45) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdDate` date DEFAULT NULL,
  `updatedDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_country`
--

DROP TABLE IF EXISTS `wc_country`;
CREATE TABLE `wc_country` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_employee`
--

DROP TABLE IF EXISTS `wc_employee`;
CREATE TABLE `wc_employee` (
  `id` int(20) NOT NULL,
  `companyId` int(20) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_employeemoduleaccess`
--

DROP TABLE IF EXISTS `wc_employeemoduleaccess`;
CREATE TABLE `wc_employeemoduleaccess` (
  `id` int(20) NOT NULL,
  `employeeId` int(20) NOT NULL,
  `moduleId` int(10) NOT NULL,
  `create` tinyint(2) NOT NULL,
  `read` tinyint(2) NOT NULL,
  `update` tinyint(2) NOT NULL,
  `delete` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_modules`
--

DROP TABLE IF EXISTS `wc_modules`;
CREATE TABLE `wc_modules` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` int(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_rolemoduleaccess`
--

DROP TABLE IF EXISTS `wc_rolemoduleaccess`;
CREATE TABLE `wc_rolemoduleaccess` (
  `id` int(20) NOT NULL,
  `roleId` int(10) NOT NULL,
  `moduleId` int(10) NOT NULL,
  `create` tinyint(2) NOT NULL,
  `read` tinyint(2) NOT NULL,
  `update` tinyint(2) NOT NULL,
  `delete` tinyint(2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_roles`
--

DROP TABLE IF EXISTS `wc_roles`;
CREATE TABLE `wc_roles` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` int(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wc_state`
--

DROP TABLE IF EXISTS `wc_state`;
CREATE TABLE `wc_state` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `countryId` int(20) NOT NULL,
  `status` int(2) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wc_state`
--

INSERT INTO `wc_state` (`id`, `name`, `countryId`, `status`, `createdDate`, `updatedDate`) VALUES
(1, 'Madhya Pradesh', 1, 1, '0000-00-00', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wc_city`
--
ALTER TABLE `wc_city`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stateId_idx` (`stateId`);

--
-- Indexes for table `wc_company`
--
ALTER TABLE `wc_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_contact`
--
ALTER TABLE `wc_contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyId_idx` (`companyId`),
  ADD KEY `contactCityId_idx` (`contactCity`);

--
-- Indexes for table `wc_country`
--
ALTER TABLE `wc_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_employee`
--
ALTER TABLE `wc_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_employeemoduleaccess`
--
ALTER TABLE `wc_employeemoduleaccess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_modules`
--
ALTER TABLE `wc_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_rolemoduleaccess`
--
ALTER TABLE `wc_rolemoduleaccess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_roles`
--
ALTER TABLE `wc_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wc_state`
--
ALTER TABLE `wc_state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wc_city`
--
ALTER TABLE `wc_city`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wc_company`
--
ALTER TABLE `wc_company`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_contact`
--
ALTER TABLE `wc_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wc_country`
--
ALTER TABLE `wc_country`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_employee`
--
ALTER TABLE `wc_employee`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_employeemoduleaccess`
--
ALTER TABLE `wc_employeemoduleaccess`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_modules`
--
ALTER TABLE `wc_modules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_rolemoduleaccess`
--
ALTER TABLE `wc_rolemoduleaccess`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_roles`
--
ALTER TABLE `wc_roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wc_state`
--
ALTER TABLE `wc_state`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wc_city`
--
ALTER TABLE `wc_city`
  ADD CONSTRAINT `stateId` FOREIGN KEY (`stateId`) REFERENCES `wc_state` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wc_contact`
--
ALTER TABLE `wc_contact`
  ADD CONSTRAINT `companyId` FOREIGN KEY (`companyId`) REFERENCES `wc_company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contactCity` FOREIGN KEY (`contactCity`) REFERENCES `wc_city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
