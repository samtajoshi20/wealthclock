-- phpMyAdmin SQL Dump
-- version 4.6.5.1deb3+deb.cihar.com~trusty.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2016 at 08:32 PM
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
  `createdDate` datetime NOT NULL,
  `updatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wc_city`
--

INSERT INTO `wc_city` (`id`, `name`, `stateId`, `status`, `createdDate`, `updatedDate`) VALUES
(62, 'Pune', 2, 1, '2016-12-07 15:45:08', '2016-12-07 10:15:08'),
(63, 'Mumbai', 2, 1, '2016-12-07 15:47:20', '2016-12-07 10:17:20');

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

--
-- Dumping data for table `wc_company`
--

INSERT INTO `wc_company` (`id`, `name`, `companyEmail`, `companyPassword`, `status`, `createdDate`, `updatedDate`) VALUES
(1, 'Wealthclock', 'samta@gmail.com', '123', 1, '0000-00-00', '0000-00-00 00:00:00');

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

--
-- Dumping data for table `wc_contact`
--

INSERT INTO `wc_contact` (`id`, `contactName`, `contactCompanyGroup`, `contactPlace`, `contactLabel`, `contactEmail`, `contactAddress`, `contactPinCode`, `contactCity`, `contactSourceType`, `contactSourceStatus`, `contactSourceDetails`, `contactBusinessValue`, `contactRelationshipManager`, `contactAccompanyRM`, `contactProducts`, `contactInformation`, `contactType`, `contactStatus`, `contactFollowDate`, `contactFollowTime`, `contactNotify`, `contactRemark`, `companyId`, `createdDate`, `updatedDate`) VALUES
(1, 'test', 'test', 'test', 'test', 'test@test', 'test', 'test', NULL, 'test', NULL, 'test', NULL, 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for table `wc_sourceType`
--

DROP TABLE IF EXISTS `wc_sourceType`;
CREATE TABLE `wc_sourceType` (
  `id` int(11) NOT NULL,
  `source` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wc_sourceType`
--

INSERT INTO `wc_sourceType` (`id`, `source`, `status`, `companyId`, `createdDate`, `updatedDate`) VALUES
(1, 'Telecalling', '1', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Conference', '1', 1, '0000-00-00 00:00:00', '2016-12-07 13:09:52'),
(3, 'Reference', '1', 1, '0000-00-00 00:00:00', '2016-12-07 13:09:52'),
(4, 'Others', '1', 1, '0000-00-00 00:00:00', '2016-12-07 13:09:52');

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
(1, 'Madhya Pradesh', 1, 1, '0000-00-00', '0000-00-00'),
(2, 'Maharashtra', 1, 1, '0000-00-00', '0000-00-00');

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
-- Indexes for table `wc_sourceType`
--
ALTER TABLE `wc_sourceType`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyId_idx` (`companyId`);

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `wc_company`
--
ALTER TABLE `wc_company`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT for table `wc_sourceType`
--
ALTER TABLE `wc_sourceType`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wc_state`
--
ALTER TABLE `wc_state`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  ADD CONSTRAINT `contactCity` FOREIGN KEY (`contactCity`) REFERENCES `wc_city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `contact_companyId` FOREIGN KEY (`companyId`) REFERENCES `wc_company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wc_sourceType`
--
ALTER TABLE `wc_sourceType`
  ADD CONSTRAINT `sourceType_companyId` FOREIGN KEY (`companyId`) REFERENCES `wc_company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
