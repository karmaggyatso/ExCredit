-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 03:02 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_mac270`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(11) NOT NULL,
  `Proj_ID` varchar(25) NOT NULL,
  `Proj_Name` varchar(50) NOT NULL,
  `BP_Name` varchar(25) NOT NULL,
  `CC_Name` varchar(25) NOT NULL,
  `Mayor_Name` varchar(25) NOT NULL,
  `Contact_Phone` varchar(15) NOT NULL,
  `Amount` decimal(15,2) NOT NULL,
  `Funding_ID` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblfunding`
--

CREATE TABLE `tblfunding` (
  `Funding_ID` int(11) NOT NULL,
  `Boro_President` tinyint(1) NOT NULL,
  `BP_Amount` decimal(15,2) NOT NULL,
  `BP_FY_received` decimal(15,2) NOT NULL,
  `BP_CP#` varchar(25) NOT NULL,
  `City_Council` tinyint(1) NOT NULL,
  `CC_Amount` decimal(15,2) NOT NULL,
  `CC_FY_received` decimal(15,2) NOT NULL,
  `CC_CP#` varchar(25) NOT NULL,
  `Mayor` tinyint(1) NOT NULL,
  `Mayor_Amount` decimal(15,2) NOT NULL,
  `Mayor_FY_received` decimal(15,2) NOT NULL,
  `Mayor_CP#` varchar(25) NOT NULL,
  `In_House` tinyint(1) DEFAULT NULL,
  `In_House_Amount` decimal(15,2) DEFAULT NULL,
  `In_House_FY_received` decimal(15,2) DEFAULT NULL,
  `Capital_Project` tinyint(1) DEFAULT NULL,
  `Capital_Project_Amount` decimal(15,2) DEFAULT NULL,
  `Capital_Project_FY_received` decimal(15,2) DEFAULT NULL,
  `CUNY_2020` tinyint(1) DEFAULT NULL,
  `CUNY_Amount` decimal(15,2) DEFAULT NULL,
  `CUNY_FY_received` decimal(15,2) DEFAULT NULL,
  `SAM_CCAP` tinyint(1) DEFAULT NULL,
  `SAM_Amount` decimal(15,2) DEFAULT NULL,
  `SAM_FY_received` decimal(15,2) DEFAULT NULL,
  `Private_Grant` tinyint(1) DEFAULT NULL,
  `Private_Amount` decimal(15,2) DEFAULT NULL,
  `Private_FY_received` decimal(15,2) DEFAULT NULL,
  `Federal_State` tinyint(1) DEFAULT NULL,
  `Federal_Amount` decimal(15,2) DEFAULT NULL,
  `Federal_FY_received` decimal(15,2) DEFAULT NULL,
  `DCAS` tinyint(1) DEFAULT NULL,
  `DCAS_Amount` decimal(15,2) DEFAULT NULL,
  `DCAS_FY_received` decimal(15,2) DEFAULT NULL,
  `DCAS_CAP` tinyint(1) DEFAULT NULL,
  `DCAS_CAP_Amount` decimal(15,2) DEFAULT NULL,
  `DCAS_CAP_FY_received` decimal(15,2) DEFAULT NULL,
  `Energy_Conservation` tinyint(1) DEFAULT NULL,
  `Energy_Conser_Amount` decimal(15,2) DEFAULT NULL,
  `Energy_FY_received` decimal(15,2) DEFAULT NULL,
  `Proj_ID` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfunding`
--

INSERT INTO `tblfunding` (`Funding_ID`, `Boro_President`, `BP_Amount`, `BP_FY_received`, `BP_CP#`, `City_Council`, `CC_Amount`, `CC_FY_received`, `CC_CP#`, `Mayor`, `Mayor_Amount`, `Mayor_FY_received`, `Mayor_CP#`, `In_House`, `In_House_Amount`, `In_House_FY_received`, `Capital_Project`, `Capital_Project_Amount`, `Capital_Project_FY_received`, `CUNY_2020`, `CUNY_Amount`, `CUNY_FY_received`, `SAM_CCAP`, `SAM_Amount`, `SAM_FY_received`, `Private_Grant`, `Private_Amount`, `Private_FY_received`, `Federal_State`, `Federal_Amount`, `Federal_FY_received`, `DCAS`, `DCAS_Amount`, `DCAS_FY_received`, `DCAS_CAP`, `DCAS_CAP_Amount`, `DCAS_CAP_FY_received`, `Energy_Conservation`, `Energy_Conser_Amount`, `Energy_FY_received`, `Proj_ID`) VALUES
(1, 0, '0.00', '0.00', '', 0, '0.00', '0.00', '', 0, '0.00', '0.00', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsecuritylevel`
--

CREATE TABLE `tblsecuritylevel` (
  `SecurityID` varchar(2) NOT NULL,
  `SecurityLevel` varchar(25) NOT NULL,
  `AccessLevel` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `UserID` varchar(25) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `UserLogin` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `SecurityLevel` varchar(25) NOT NULL,
  `SecurityID` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfunding`
--
ALTER TABLE `tblfunding`
  ADD PRIMARY KEY (`Funding_ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`SecurityID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfunding`
--
ALTER TABLE `tblfunding`
  MODIFY `Funding_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
