-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2016 at 10:39 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `emidwify`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `areaCode` varchar(20) NOT NULL,
  `area` varchar(100) NOT NULL,
  `midwifeID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`areaCode`, `area`, `midwifeID`) VALUES
('A1', 'Ragama South', 'Midwife0'),
('A2', 'Ragama North', 'Midwife0'),
('A5', 'Kelaniya South', 'Midwife2'),
('A6', 'Kelaniya North', 'Midwife2'),
('A9', 'Kadawatha North', 'Midwife3'),
('A10', 'Kadawatha South', 'Midwife3');

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE IF NOT EXISTS `child` (
  `childID` varchar(20) NOT NULL,
  `guardianID` varchar(20) NOT NULL,
  `childName` varchar(100) NOT NULL,
  `childDateofDelivery` date NOT NULL,
  `childBirthWeight` float NOT NULL,
  `childFatherID` varchar(20) DEFAULT NULL,
  `childNotes` varchar(1000) DEFAULT NULL,
  `childRegisteredDate` datetime DEFAULT NULL,
  `childPicture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`childID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `child`
--

INSERT INTO `child` (`childID`, `guardianID`, `childName`, `childDateofDelivery`, `childBirthWeight`, `childFatherID`, `childNotes`, `childRegisteredDate`, `childPicture`) VALUES
('Child0', 'Guard0', 'T.K.Hiruni Bhagya', '2016-09-04', 5.2, 'Father0', '', '2016-09-04 11:42:52', 'midwife/images/services/baby.png'),
('Child1', 'Guard4', 'S.K.Saman Kumara', '2016-09-02', 6, 'Father1', '', '2016-09-05 01:51:56', 'midwife/images/services/baby.png'),
('Child10', 'Guard13', 'H.K.Janani Kumaradasa', '2016-08-20', 4.5, NULL, '', '2016-09-17 10:56:52', 'midwife/images/services/baby.png'),
('Child11', 'Guard14', 'K.L.Hiruni Ganga', '2016-09-19', 5.2, 'Father0', '', '2016-09-19 06:43:05', 'midwife/images/services/baby.png'),
('Child12', 'Guard14', 'J.K.Bhagya Kumari', '2016-09-19', 4.5, 'father0', '', '2016-09-19 09:51:39', 'midwife/images/services/baby.png'),
('Child13', 'Guard15', 'K.L.Saman Perera', '2016-09-20', 5.2, 'father3', '', '2016-09-19 11:42:05', 'midwife/images/services/baby.png'),
('Child14', 'Guard14', 'K.L.Ganga Silva', '2016-09-19', 4.5, 'Father8', '', '2016-09-20 09:19:15', 'midwife/images/services/baby.png'),
('Child15', 'Guard0', 'L.K.Kamal Kumara', '2016-11-05', 5, 'Father0', '', '2016-11-06 03:44:13', 'midwife/images/services/baby.png'),
('Child2', 'Guard5', 'K.A.Kumari Silva', '2016-08-31', 6, 'Father2', '', '2016-09-05 02:13:29', 'midwife/images/services/baby.png'),
('Child3', 'Guard1', 'A.S.Kalum Bhagya', '2016-08-31', 4.3, 'Father3', '', '2016-09-05 02:20:26', 'midwife/images/services/baby.png'),
('Child4', 'Guard6', 'K.W.Melani Perera', '2016-08-29', 4.2, 'Father4', '', '2016-09-05 08:57:34', 'midwife/images/services/baby.png'),
('Child5', 'Guard7', 'F.R.Hasra perera', '2016-08-31', 4.8, 'Father5', '', '2016-09-05 09:02:58', 'midwife/images/services/baby.png'),
('Child6', 'Guard5', 'K.L.Supun Silva', '2016-09-05', 6.3, 'Father1', '', '2016-09-05 09:11:11', 'midwife/images/services/baby.png'),
('Child7', 'Guard8', 'L.Lasith Madushanka', '2016-09-16', 4.5, 'Father6', '', '2016-09-12 08:59:03', 'midwife/images/services/baby.png'),
('Child8', 'Guard11', 'J.K.Himashi Perera', '2016-09-15', 5.2, 'Father7', '', '2016-09-16 03:22:47', 'midwife/images/services/baby.png'),
('Child9', 'Guard5', 'K.L.Himali Perera', '2016-08-14', 4.5, NULL, '', '2016-09-17 09:44:37', 'midwife/images/services/baby.png');

-- --------------------------------------------------------

--
-- Table structure for table `childclinic`
--

CREATE TABLE IF NOT EXISTS `childclinic` (
  `childID` varchar(20) NOT NULL,
  `clinicDate` date NOT NULL,
  `age` varchar(100) NOT NULL,
  `weight` float DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childclinic`
--

INSERT INTO `childclinic` (`childID`, `clinicDate`, `age`, `weight`, `updatedDate`) VALUES
('Child0', '2016-09-09', '5 Days', 6.5, '2016-09-09 11:08:10'),
('Child3', '2016-09-12', '12 Days', 5.6, '2016-09-12 09:01:37'),
('Child5', '2016-09-15', '15 Days', 5.2, '2016-09-15 09:51:15'),
('Child8', '2016-09-16', '1 Days', 5.2, '2016-09-16 03:26:02'),
('Child0', '2016-09-20', '16 Days', 5.5, '2016-09-19 09:58:16'),
('Child14', '2016-09-20', '1 Days', 5.4, '2016-09-20 09:20:53'),
('Child0', '2016-10-27', '1 Months , 23 Days', 4.5, '2016-10-27 02:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `childdeath`
--

CREATE TABLE IF NOT EXISTS `childdeath` (
  `motherID` varchar(20) NOT NULL,
  `childID` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `reason` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `childdiseases`
--

CREATE TABLE IF NOT EXISTS `childdiseases` (
  `childID` varchar(20) NOT NULL,
  `diseaseCode` varchar(20) NOT NULL,
  `diseaseName` varchar(100) DEFAULT NULL,
  `diseaseDate` date DEFAULT NULL,
  `diseaseNote` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `childepidemics`
--

CREATE TABLE IF NOT EXISTS `childepidemics` (
  `childID` varchar(20) NOT NULL,
  `epidemicCode` varchar(20) NOT NULL,
  `epidemicName` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childepidemics`
--

INSERT INTO `childepidemics` (`childID`, `epidemicCode`, `epidemicName`, `date`, `note`) VALUES
('Child1', 'ep1', 'epi', '2016-12-03', ''),
('Child2', 'ep1', 'epp', '2016-08-31', ''),
('Child5', 'ep1', 'epp', '2016-08-31', '');

-- --------------------------------------------------------

--
-- Table structure for table `childgivenvaccines`
--

CREATE TABLE IF NOT EXISTS `childgivenvaccines` (
  `childID` varchar(20) NOT NULL,
  `vaccineCode` varchar(20) NOT NULL,
  `vaccineName` varchar(100) DEFAULT NULL,
  `vaccineAmount` float DEFAULT NULL,
  `clinicDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childgivenvaccines`
--

INSERT INTO `childgivenvaccines` (`childID`, `vaccineCode`, `vaccineName`, `vaccineAmount`, `clinicDate`) VALUES
('Child0', 'v0', 'Maleria', 10.5, '2016-09-09'),
('Child3', 'v0', 'Maleria', 10.5, '2016-09-12'),
('Child5', 'v0', 'Maleria', 10.5, '2016-09-15'),
('Child8', 'v0', 'Maleria', 10.5, '2016-09-16'),
('Child14', 'v1', 'dengue', 5.5, '2016-09-20'),
('Child0', 'v1', 'dengue', 5.5, '2016-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `childvaccineamounts`
--

CREATE TABLE IF NOT EXISTS `childvaccineamounts` (
  `vaccineCode` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `childvaccineamounts`
--

INSERT INTO `childvaccineamounts` (`vaccineCode`, `age`, `amount`) VALUES
('v1', 30, 5.5);

-- --------------------------------------------------------

--
-- Table structure for table `childweightcycle`
--

CREATE TABLE IF NOT EXISTS `childweightcycle` (
  `maxAge` int(11) NOT NULL,
  `minAge` int(11) NOT NULL,
  `maxWeight` float NOT NULL,
  `minWeight` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE IF NOT EXISTS `clinics` (
  `clinicDate` date NOT NULL,
  `areaCode` varchar(20) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`clinicDate`, `areaCode`, `venue`, `time`) VALUES
('2016-08-29', 'A1', 'town hall', '00:00:09'),
('2016-08-30', 'A1', 'temple', '00:00:08'),
('2016-08-31', 'A2', 'temple', '00:00:10'),
('2016-09-01', 'A2', 'school', '00:00:09'),
('2016-09-08', 'A1', 'TownHall', '00:00:09'),
('2016-09-09', 'A0', 'Temple', '00:00:09'),
('2016-09-20', 'A1', 'Hall', '02:00:00'),
('2016-09-20', 'A1', 'Hall', '02:00:00'),
('2016-09-21', 'A2', 'Hall2', '02:00:00'),
('2016-12-12', 'A2', 'hall', '08:00:00'),
('2016-10-25', 'A5', 'hall', '08:00:00'),
('2016-10-30', 'A6', 'hall', '08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `eventID` varchar(20) NOT NULL,
  `areaCode` varchar(20) NOT NULL,
  `eventName` varchar(500) NOT NULL,
  `eventVenue` varchar(500) NOT NULL,
  `eventDate` date NOT NULL,
  `eventTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventID`, `areaCode`, `eventName`, `eventVenue`, `eventDate`, `eventTime`) VALUES
('Event0', 'A1', 'event', 'hall', '2016-09-17', '12:00:00'),
('Event1', 'A2', 'Group Meeting', 'Temple', '2016-09-16', '08:01:00'),
('Event2', 'A2', 'Meeting D', 'Temple', '2016-09-24', '08:00:00'),
('Event3', 'A1', 'meeting b', 'hall', '2016-09-23', '09:00:00'),
('Event4', 'A1', 'event1', 'hall', '2016-09-25', '08:00:00'),
('Event5', 'A1', 'event', 'hall', '2016-09-25', '08:00:00'),
('Event6', 'A2', 'meeting', 'hall', '2016-09-30', '08:00:00'),
('Event7', 'A2', 'Meeting', 'hall', '2016-11-21', '08:00:00'),
('Event8', 'A1', 'meeting', 'hall', '2016-10-12', '08:00:00'),
('Event9', 'A1', 'event5', 'hall', '2016-11-05', '08:00:00'),
('Event10', 'A1', 'meeting', 'hall', '2016-11-20', '08:00:00'),
('Event11', 'A1', 'event1', 'hall', '2016-11-30', '08:00:00'),
('Event12', 'A1', 'ev1', 'hall', '2016-10-30', '08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `eventguardians`
--

CREATE TABLE IF NOT EXISTS `eventguardians` (
  `eventID` varchar(20) NOT NULL,
  `guardianID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventguardians`
--

INSERT INTO `eventguardians` (`eventID`, `guardianID`) VALUES
('Event0', 'Guard0'),
('Event0', 'Guard4'),
('Event0', 'Guard7'),
('Event0', 'Guard5'),
('Event1', 'Guard0'),
('Event1', 'Guard5'),
('Event1', 'Guard1'),
('Event2', 'Guard1'),
('Event2', 'Guard10'),
('Event2', 'Guard5'),
('Event2', 'Guard8'),
('Event2', 'Guard9'),
('Event3', 'Guard0'),
('Event3', 'Guard4'),
('Event3', 'Guard7'),
('Event4', 'Guard0'),
('Event4', 'Guard11'),
('Event4', 'Guard12'),
('Event4', 'Guard13'),
('Event4', 'Guard4'),
('Event4', 'Guard7'),
('Event5', 'Guard0'),
('Event5', 'Guard11'),
('Event5', 'Guard12'),
('Event5', 'Guard13'),
('Event5', 'Guard14'),
('Event5', 'Guard15'),
('Event5', 'Guard16'),
('Event5', 'Guard4'),
('Event5', 'Guard7'),
('Event6', 'Guard1'),
('Event6', 'Guard10'),
('Event6', 'Guard17'),
('Event6', 'Guard5'),
('Event6', 'Guard8'),
('Event6', 'Guard9'),
('Event7', 'Guard1'),
('Event7', 'Guard10'),
('Event7', 'Guard17'),
('Event7', 'Guard18'),
('Event7', 'Guard5'),
('Event7', 'Guard8'),
('Event7', 'Guard9'),
('Event8', 'Guard0'),
('Event8', 'Guard11'),
('Event8', 'Guard12'),
('Event8', 'Guard13'),
('Event8', 'Guard14'),
('Event8', 'Guard15'),
('Event8', 'Guard16'),
('Event8', 'Guard4'),
('Event8', 'Guard7'),
('Event9', 'Guard0'),
('Event9', 'Guard11'),
('Event9', 'Guard12'),
('Event9', 'Guard13'),
('Event9', 'Guard14'),
('Event9', 'Guard15'),
('Event9', 'Guard16'),
('Event9', 'Guard19'),
('Event9', 'Guard4'),
('Event9', 'Guard7'),
('Event10', 'Guard0'),
('Event10', 'Guard11'),
('Event10', 'Guard12'),
('Event10', 'Guard13'),
('Event10', 'Guard14'),
('Event10', 'Guard15'),
('Event10', 'Guard16'),
('Event10', 'Guard19'),
('Event10', 'Guard4'),
('Event10', 'Guard7'),
('Event11', 'Guard0'),
('Event11', 'Guard11'),
('Event11', 'Guard12'),
('Event11', 'Guard13'),
('Event11', 'Guard14'),
('Event11', 'Guard15'),
('Event11', 'Guard16'),
('Event11', 'Guard19'),
('Event11', 'Guard20'),
('Event11', 'Guard4'),
('Event11', 'Guard7'),
('Event12', 'Guard0'),
('Event12', 'Guard11'),
('Event12', 'Guard12'),
('Event12', 'Guard13'),
('Event12', 'Guard14'),
('Event12', 'Guard15'),
('Event12', 'Guard16'),
('Event12', 'Guard19'),
('Event12', 'Guard20'),
('Event12', 'Guard4'),
('Event12', 'Guard7');

-- --------------------------------------------------------

--
-- Table structure for table `father`
--

CREATE TABLE IF NOT EXISTS `father` (
  `fatherID` varchar(20) NOT NULL,
  `fatherName` varchar(100) NOT NULL,
  `fatherDateofBirth` date NOT NULL,
  `fatherAddress` varchar(1000) DEFAULT NULL,
  `fatherOccupation` varchar(100) DEFAULT NULL,
  `fatherEdulevel` varchar(10) NOT NULL,
  `fatherPicture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`fatherID`),
  UNIQUE KEY `fatherID` (`fatherID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `father`
--

INSERT INTO `father` (`fatherID`, `fatherName`, `fatherDateofBirth`, `fatherAddress`, `fatherOccupation`, `fatherEdulevel`, `fatherPicture`) VALUES
('Father0', 'T.K.Kamal Silva', '1953-09-01', 'Thalwattha \n Ragama North \n  \n ', 'Doctor', 'medium', 'midwife/images/services/father.png'),
('Father1', 'S.K.Kamal silva', '1959-10-31', 'Thlwattha \n Ragama \n  \n ', '', 'medium', 'midwife/images/services/father.png'),
('Father2', 'K.A.Saman Silva', '1950-11-30', 'Thalwattha \n Ragama \n  \n ', '', 'high', 'midwife/images/services/father.png'),
('Father3', 'A.S.Kamal Hiralage', '1945-12-31', 'Keselwattha \n Ragama \n  \n ', 'Doctor', 'high', 'midwife/images/services/father.png'),
('Father4', 'K.W.Kumara Perera', '1945-11-01', 'Kandy Rd \n Kelaniya \n  \n ', '', 'high', 'midwife/images/services/father.png'),
('Father5', 'F.R.Sunil Amaraweera', '1966-10-29', 'Helwattha \n Ragama \n kolawattha \n ', 'Driver', 'high', 'midwife/images/services/father.png'),
('Father6', 'L.Saman Silva', '1960-09-05', 'Thalgama \n Ragama \n  \n ', 'Doctor', 'high', 'midwife/images/services/father.png'),
('Father7', 'J.K.Kamal Perera', '1980-02-10', 'Hospital Road \n Keselgamuwa \n  \n ', 'Doctor', 'high', 'midwife/images/services/father.png'),
('Father8', 'K.J.Kumara Siriwarden', '1990-09-25', 'Kany Road \n Ragama \n  \n ', 'Doctor', 'high', 'midwife/images/services/father.png');

-- --------------------------------------------------------

--
-- Table structure for table `fatherepidemics`
--

CREATE TABLE IF NOT EXISTS `fatherepidemics` (
  `fatherID` varchar(20) NOT NULL,
  `epidemicCode` varchar(20) NOT NULL,
  `epidemicName` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fatherepidemics`
--

INSERT INTO `fatherepidemics` (`fatherID`, `epidemicCode`, `epidemicName`, `date`, `note`) VALUES
('Father1', 'ep1', 'epic', '2004-11-01', ''),
('Father2', 'ep1', 'epp', '2008-12-31', ''),
('Father5', 'Ep1', 'epp', '2007-11-30', '');

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE IF NOT EXISTS `guardian` (
  `guardianID` varchar(20) NOT NULL,
  `guardianName` varchar(100) NOT NULL,
  `guardianAddress` varchar(1000) NOT NULL,
  `guardianLocation` varchar(500) DEFAULT NULL,
  `guardianEmail` varchar(50) NOT NULL,
  `guardianBDate` date NOT NULL,
  `guardianOccupation` varchar(50) NOT NULL,
  `guardianNofchildren` int(11) DEFAULT NULL,
  `guardianEducationLevel` varchar(10) NOT NULL,
  `guardianAreaCode` varchar(20) NOT NULL,
  `guardianAge` date DEFAULT NULL,
  `guardianDateOfRegistered` datetime DEFAULT NULL,
  `guardianNote` varchar(1000) DEFAULT NULL,
  `guardianPicture` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guardianID`),
  UNIQUE KEY `guardianID` (`guardianID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guardian`
--

INSERT INTO `guardian` (`guardianID`, `guardianName`, `guardianAddress`, `guardianLocation`, `guardianEmail`, `guardianBDate`, `guardianOccupation`, `guardianNofchildren`, `guardianEducationLevel`, `guardianAreaCode`, `guardianAge`, `guardianDateOfRegistered`, `guardianNote`, `guardianPicture`) VALUES
('Guard0', 'H.K.Thamara Perera', 'Thalwattha \n Ragama North \n  \n ', '7.027864401135612, 79.91975798721319', 'abc@gmail.com', '1975-10-31', 'Doctor', 1, 'high', 'A2', NULL, '2016-09-04 11:24:13', '', 'mother/images/Guard0.jpeg'),
('Guard1', 'K.L.Kamala Kasthuriarachchi', 'Keselwattha \n Ragama \n  \n ', '7.026714391110002, 79.91628184432989', 'fsdf@gmail.com', '1979-12-02', 'Doctor', 1, 'low', 'A2', NULL, '2016-09-04 11:30:57', '', 'mother/images/Guard1.jpg'),
('Guard10', 'L.L.Otara', 'Jalawatha \n Ragama \n  \n ', '7.025521785115377, 79.91980090255743', '', '1990-01-05', 'Doctor', 0, 'high', 'A2', NULL, '2016-09-12 08:48:29', '', 'midwife/images/services/profile.png'),
('Guard11', 'H.J.Keshala Damayanthi', 'Hospital \n Keselgamuwa \n  \n ', '7.026799577135397,', '', '1990-02-28', 'Housewife', 0, 'medium', 'A1', NULL, '2016-09-16 03:09:24', '						', 'midwife/images/services/profile.png'),
('Guard12', 'L.P.Shriyani Kusumalatha', 'Railway Road \n Kudagama \n  \n ', '7.03018570899943, 79.92166772003179', '', '1980-01-05', 'Housewife', 0, 'low', 'A1', NULL, '2016-09-16 03:31:55', '', 'midwife/images/services/profile.png'),
('Guard13', 'H.J.Kumari Perera', 'Kadawatha Rd \n Ragama \n  \n ', '7.028056069196573, 79.91445794219976', '', '1950-09-05', 'Attendant', 0, 'high', 'A1', NULL, '2016-09-17 10:55:07', '', 'midwife/images/services/profile.png'),
('Guard14', 'H.L.Sithara Perera', 'Kadawatha Road \n Ragama \n  \n ', '7.031016265876833, 79.91939320678716', '', '1980-04-01', 'Housewife', 0, 'high', 'A1', NULL, '2016-09-19 06:40:53', '', 'midwife/images/services/profile.png'),
('Guard15', 'J.H.Lakshika Sewwandi', 'Kandy Road \n Ragama \n  \n ', '7.029781078187952, 79.91789116973882', 'abc@gmail.com', '1960-09-05', 'Housewife', 0, 'high', 'A1', NULL, '2016-09-19 11:38:59', '', 'midwife/images/services/profile.png'),
('Guard16', 'L.K.himashini kurera', 'Kany Road \n Ragama \n  \n ', '7.029781078187952, 79.91658225173956', '', '1990-09-05', 'Housewife', 0, 'high', 'A1', NULL, '2016-09-20 07:47:17', '', 'midwife/images/services/profile.png'),
('Guard17', 'H.M.Herath', 'Kandy Road \n Ragama \n  \n ', '7.030057930886504, 79.91827740783697', '', '1960-04-20', 'Housewife', 0, 'high', 'A2', NULL, '2016-09-20 08:02:32', '', 'midwife/images/services/profile.png'),
('Guard18', 'K.L.Sirimawathi', 'Kandy Road  \n Ragama \n  \n ', '7.03076071007271, 79.92083087081915', '', '1990-09-23', 'Hosewife', 0, 'high', 'A2', NULL, '2016-09-20 09:02:37', '', 'midwife/images/services/profile.png'),
('Guard19', 'K.L.Kusumawathi', 'Kand Rd \n Ragama \n  \n ', '7.030270894388522, 79.91825595016485', '', '1960-01-02', 'housewife', 0, 'high', 'A1', NULL, '2016-09-20 11:23:35', '', 'midwife/images/services/profile.png'),
('Guard2', 'A.H.Kumari Siriwardena', 'Thalwattha \n Kelniya \n  \n ', '7.027864401135612, 79.91975798721319', 'abc@gmail.com', '1974-10-02', 'Nurse', 1, 'high', 'A6', NULL, '2016-09-04 11:35:43', '', 'midwife/images/services/profile.png'),
('Guard20', 'I.K.Kamala Kumari', 'Kany Road \n Ragama \n  \n ', '7.029546818083402, 79.91765513534551', '', '1960-09-21', 'Housewife', 0, 'high', 'A1', NULL, '2016-09-20 01:57:57', '', 'midwife/images/services/profile.png'),
('Guard3', 'K.L.Malai Peris', 'Pattiya Junction \n Kelaniya \n  \n ', '7.02831162648824, 79.91668954010015', 'hhh@gmail.com', '1974-08-02', 'Housewife', 1, 'high', 'A5', NULL, '2016-09-04 11:38:31', '', 'midwife/images/services/profile.png'),
('Guard4', 'S.K.D.S.Silve', 'Thalwattha \n Ragama \n  \n ', '7.025330116009475, 79.91801991577154', 'gdm@gmail.com', '1977-11-01', 'Cook', 0, 'high', 'A1', NULL, '2016-09-05 01:15:50', '', 'midwife/images/services/profile.png'),
('Guard5', 'K.H.Sumana Perera', 'Keselwattha \n Ragama \n  \n ', '7.026458832940146, 79.91975798721319', '', '1968-10-02', '', 0, 'high', 'A2', NULL, '2016-09-05 01:48:33', '', 'midwife/images/services/profile.png'),
('Guard6', 'K.H.M.De Silva', 'Kandy rd  \n Kwlaniya \n  \n ', '7.029568114461463, 79.91392150039678', 'asd@gmail.com', '1970-10-29', 'Teacher', 0, 'high', 'A5', NULL, '2016-09-05 08:55:51', '', 'midwife/images/services/profile.png'),
('Guard7', 'S.I.Madhawi Amaradasa', 'Helwattha Rd  \n Ragama \n  \n ', '7.0308458953563875, 79.91879239196783', 'hdl@gmail.com', '1977-12-01', '', 0, 'medium', 'A1', NULL, '2016-09-05 09:00:23', '', 'midwife/images/services/profile.png'),
('Guard8', 'S.K.R.Mallika', 'Halwattha \n Ragama \n  \n ', '7.023605090500789, 79.92119565124517', 'hhh@gmail.com', '1980-09-01', 'Housewife', 0, 'high', 'A2', NULL, '2016-09-12 08:31:37', '', 'midwife/images/services/profile.png'),
('Guard9', 'T.K.Lalini Silva', 'Yalawattha \n Ragama \n  \n ', '7.022604146839861, 79.92085232849126', '', '1980-12-20', 'Housewife', 0, 'high', 'A2', NULL, '2016-09-12 08:44:41', '', 'midwife/images/services/profile.png');

-- --------------------------------------------------------

--
-- Table structure for table `guardianmobilenumber`
--

CREATE TABLE IF NOT EXISTS `guardianmobilenumber` (
  `guardianID` varchar(20) NOT NULL,
  `guardianMobileNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guardianmobilenumber`
--

INSERT INTO `guardianmobilenumber` (`guardianID`, `guardianMobileNumber`) VALUES
('Guard1', '0715498632'),
('Guard2', '0112987945'),
('Guard3', '0112549876'),
('Guard4', '0112987645'),
('Guard6', '0758979455'),
('Guard7', '0112897465'),
('Guard8', '0112897546'),
('Guard9', '0112897564'),
('Guard12', '0112569874'),
('Guard15', '0112456986'),
('Guard16', '0112021546'),
('Guard17', '0119875466'),
('Guard18', '0112897945'),
('Guard19', '0112897875'),
('Guard20', '0714569845'),
('Guard11', '0712598636'),
('Guard0', '0714598795'),
('Guard0', '0112459876');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `senderID` varchar(20) NOT NULL,
  `receiverID` varchar(20) NOT NULL,
  `message` mediumtext NOT NULL,
  `sendTime` datetime NOT NULL,
  `receiveTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`senderID`, `receiverID`, `message`, `sendTime`, `receiveTime`) VALUES
('Guard0', 'Midwife0', 'ufgvsdhkfsdf', '2012-09-08 11:05:00', '2016-10-26 01:03:59'),
('Midwife0', 'Guard0', 'jjb mcxcvx', '2016-09-09 11:20:45', '2016-09-18 11:56:37'),
('Midwife0', 'Guard5', 'hii', '2016-09-12 08:01:25', '2016-09-18 12:08:58'),
('Midwife0', 'Guard1', 'hii', '2016-09-12 08:01:25', NULL),
('Supervise0', 'Midwife0', 'hiii', '2016-08-12 21:12:12', NULL),
('Guard1', 'Midwife0', 'hii', '2016-09-12 21:12:12', '2016-11-01 02:45:23'),
('Midwife0', 'Supervisor0', 'hii', '2016-09-12 09:21:10', NULL),
('Midwife0', 'Guard1', 'hii', '2016-09-12 09:21:36', NULL),
('Midwife0', 'Guard10', '', '2016-09-16 06:03:43', '2016-09-18 12:11:46'),
('Midwife0', 'Guard10', 'lm.', '2016-09-16 06:03:46', '2016-09-18 12:11:46'),
('Midwife0', 'Guard10', 'njkn', '2016-09-16 06:03:51', '2016-09-18 12:11:46'),
('Midwife0', 'Guard10', 'hjbk', '2016-09-16 06:03:55', '2016-09-18 12:11:46'),
('Midwife0', 'Guard10', 'nkjn,', '2016-09-16 06:04:00', '2016-09-18 12:11:46'),
('Midwife0', 'Supervisor0', 'hey', '2016-09-18 11:48:48', NULL),
('Midwife0', 'Guard0', 'hii', '2016-09-18 11:52:28', '2016-09-18 11:56:37'),
('Guard0', 'Midwife0', 'hi there', '2016-09-18 12:04:09', '2016-10-26 01:03:59'),
('Guard0', 'Midwife0', 'hii', '2016-09-18 12:05:17', '2016-10-26 01:03:59'),
('Midwife0', 'Guard0', 'hiiii', '2016-09-18 12:05:50', '2016-09-18 12:06:09'),
('Guard0', 'Midwife0', 'hellowww', '2016-09-18 12:06:23', '2016-10-26 01:03:59'),
('Guard5', 'Midwife0', 'hellow', '2016-09-18 12:09:04', '2016-11-01 02:45:29'),
('Guard10', 'Midwife0', 'yeah', '2016-09-18 12:11:53', NULL),
('Midwife0', 'Guard0', 'tell me', '2016-09-18 12:12:55', '2016-09-19 03:32:26'),
('Midwife0', 'Guard0', 'yigkj', '2016-09-19 11:45:12', '2016-09-19 11:45:39'),
('Midwife0', 'Guard5', 'yygjas', '2016-09-20 07:51:58', NULL),
('Midwife0', 'Guard0', 'hellow', '2016-09-20 07:52:18', '2016-09-20 09:09:06'),
('Midwife0', 'Guard13', 'hellow', '2016-09-20 07:52:18', NULL),
('Midwife0', 'Guard12', 'hellow', '2016-09-20 07:52:18', NULL),
('Midwife0', 'Guard11', 'hellow', '2016-09-20 07:52:18', '2016-10-29 01:08:55'),
('Midwife0', 'Guard16', 'hellow', '2016-09-20 07:52:18', NULL),
('Midwife0', 'Guard14', 'hellow', '2016-09-20 07:52:18', NULL),
('Midwife0', 'Guard15', 'hellow', '2016-09-20 07:52:18', NULL),
('Midwife0', 'Guard0', 'hii', '2016-09-20 08:06:36', '2016-09-20 09:09:06'),
('Midwife0', 'Guard11', 'hii', '2016-09-20 08:06:36', '2016-10-29 01:08:55'),
('Midwife0', 'Guard16', 'hii', '2016-09-20 08:06:36', NULL),
('Midwife0', 'Guard15', 'hii', '2016-09-20 08:06:36', NULL),
('Midwife0', 'Guard14', 'hii', '2016-09-20 08:06:36', NULL),
('Midwife0', 'Guard13', 'hii', '2016-09-20 08:06:36', NULL),
('Midwife0', 'Guard12', 'hii', '2016-09-20 08:06:36', NULL),
('Midwife0', 'Guard0', 'jhs', '2016-09-20 09:06:18', '2016-09-20 09:09:06'),
('Midwife0', 'Guard11', 'jhs', '2016-09-20 09:06:18', '2016-10-29 01:08:55'),
('Midwife0', 'Guard12', 'jhs', '2016-09-20 09:06:18', NULL),
('Midwife0', 'Guard13', 'jhs', '2016-09-20 09:06:18', NULL),
('Midwife0', 'Guard11', 'hii', '2016-09-20 09:22:22', '2016-10-29 01:08:55'),
('Midwife0', 'Guard12', 'hii', '2016-09-20 09:22:22', NULL),
('Midwife0', 'Guard0', 'hii', '2016-09-20 09:22:22', '2016-09-20 09:25:02'),
('Midwife0', 'Guard0', 'jyrh', '2016-09-20 12:02:41', '2016-10-18 10:17:41'),
('Midwife0', 'Guard11', 'jyrh', '2016-09-20 12:02:41', '2016-10-29 01:08:55'),
('Midwife0', 'Guard12', 'jyrh', '2016-09-20 12:02:41', NULL),
('Midwife0', 'Supervisor0', 'hii', '2016-10-19 07:23:34', NULL),
('Midwife0', 'Supervisor0', 'mama awa', '2016-10-20 08:33:22', NULL),
('Guard11', 'Midwife0', 'hello', '2016-10-29 01:09:10', '2016-10-29 01:09:37'),
('Guard11', 'Midwife0', 'hii', '2016-10-29 01:09:23', '2016-10-29 01:09:37'),
('Guard11', 'Midwife0', 'dude', '2016-10-29 01:09:48', '2016-10-29 01:11:24'),
('Guard11', 'Midwife0', 'hii', '2016-10-29 01:10:57', '2016-10-29 01:11:24'),
('Guard11', 'Midwife0', 'hello', '2016-10-29 01:11:29', '2016-10-29 01:13:17'),
('Guard11', 'Midwife0', 'ammoh', '2016-10-29 01:12:43', '2016-10-29 01:13:17'),
('Guard11', 'Midwife0', 'hehe', '2016-10-29 01:13:14', '2016-10-29 01:13:17'),
('Guard11', 'Midwife0', 'the', '2016-10-29 01:13:26', '2016-10-29 01:16:15'),
('Guard11', 'Midwife0', 'heh', '2016-10-29 01:16:10', '2016-10-29 01:16:15'),
('Guard11', 'Midwife0', 'huh', '2016-10-29 01:16:36', '2016-10-29 01:41:06'),
('Midwife0', 'Guard0', 'hii', '2016-10-29 01:40:41', '2016-10-29 08:27:30'),
('Midwife0', 'Guard11', 'hii', '2016-10-29 01:41:10', '2016-10-29 08:11:30'),
('Midwife0', 'Guard11', 'hii', '2016-10-29 07:49:10', '2016-10-29 08:11:30'),
('Midwife0', 'Guard11', 'hey', '2016-10-29 08:11:16', '2016-10-29 08:11:30'),
('Midwife0', 'Guard11', 'jjjj', '2016-10-29 08:15:36', '2016-10-29 08:16:58'),
('Midwife0', 'Guard11', 'hhhh', '2016-10-29 08:17:06', NULL),
('Midwife0', 'Supervisor0', 'hey', '2016-10-29 08:39:53', NULL),
('Midwife0', 'Supervisor0', 'puh', '2016-10-29 08:40:12', NULL),
('Midwife0', 'Guard0', 'hey', '2016-11-06 05:53:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `midwife`
--

CREATE TABLE IF NOT EXISTS `midwife` (
  `midwifeID` varchar(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `address` varchar(1000) NOT NULL,
  `startedDate` date NOT NULL,
  `supervisorID` varchar(20) NOT NULL,
  `midwifePicture` varchar(500) NOT NULL,
  `dateOfRegister` datetime DEFAULT NULL,
  PRIMARY KEY (`midwifeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `midwife`
--

INSERT INTO `midwife` (`midwifeID`, `name`, `dateOfBirth`, `address`, `startedDate`, `supervisorID`, `midwifePicture`, `dateOfRegister`) VALUES
('Midwife0', 'R.K.M.N.Silva', '1960-02-01', 'Ragama road, Kadawatha', '2010-02-12', 'Supervisor0', 'midwife/images/Midwife0.jpeg', NULL),
('Midwife1', 'S.J.H.C.Perera', '1990-02-01', '', '2016-02-12', 'Supervisor0', 'midwife/images/midwife.png', NULL),
('Midwife2', 'L.M.N.Perera', '1956-05-01', '', '2011-02-28', 'Supervisor0', 'midwife/images/midwife.png', NULL),
('Midwife3', 'S.G.H.Arachchi', '1940-02-01', '', '2009-02-12', 'Supervisor0', 'midwife/images/midwife.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mother`
--

CREATE TABLE IF NOT EXISTS `mother` (
  `guardianID` varchar(20) NOT NULL,
  `motherID` varchar(20) NOT NULL,
  PRIMARY KEY (`motherID`),
  UNIQUE KEY `guardianID` (`guardianID`),
  UNIQUE KEY `motherID` (`motherID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mother`
--

INSERT INTO `mother` (`guardianID`, `motherID`) VALUES
('Guard0', 'Mother20'),
('Guard1', 'Mother1'),
('Guard10', 'Mother9'),
('Guard11', 'Mother19'),
('Guard12', 'Mother11'),
('Guard14', 'Mother12'),
('Guard15', 'Mother13'),
('Guard16', 'Mother14'),
('Guard17', 'Mother15'),
('Guard18', 'Mother16'),
('Guard19', 'Mother17'),
('Guard2', 'Mother2'),
('Guard20', 'Mother18'),
('Guard3', 'Mother3'),
('Guard4', 'Mother4'),
('Guard6', 'Mother5'),
('Guard7', 'Mother6'),
('Guard8', 'Mother7'),
('Guard9', 'Mother8');

-- --------------------------------------------------------

--
-- Table structure for table `motherabortions`
--

CREATE TABLE IF NOT EXISTS `motherabortions` (
  `motherID` varchar(20) NOT NULL,
  `abortionDate` date NOT NULL,
  `abortionReason` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motherabortions`
--

INSERT INTO `motherabortions` (`motherID`, `abortionDate`, `abortionReason`) VALUES
('Mother4', '2010-08-22', '');

-- --------------------------------------------------------

--
-- Table structure for table `motherchilddeaths`
--

CREATE TABLE IF NOT EXISTS `motherchilddeaths` (
  `motherID` varchar(20) NOT NULL,
  `childID` varchar(20) DEFAULT NULL,
  `childName` varchar(100) DEFAULT NULL,
  `fatherID` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `reason` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `motherclinic`
--

CREATE TABLE IF NOT EXISTS `motherclinic` (
  `motherID` varchar(20) NOT NULL,
  `clinicDate` date NOT NULL,
  `age` varchar(100) NOT NULL,
  `weight` float DEFAULT NULL,
  `updatedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motherclinic`
--

INSERT INTO `motherclinic` (`motherID`, `clinicDate`, `age`, `weight`, `updatedDate`) VALUES
('Guard0', '2016-09-09', '40 Years , 10 Months , 9 Days', 65.2, '2016-09-09 11:06:31'),
('Guard7', '2016-09-09', '38 Years , 9 Months , 8 Days', 65.2, '2016-09-12 07:36:15'),
('Guard8', '2016-09-12', '36 Years , 11 Days', 62, '2016-09-12 09:00:07'),
('Guard1', '2016-09-20', '36 Years , 9 Months , 18 Days', 80, '2016-09-20 07:49:53'),
('Guard12', '2016-09-20', '36 Years , 8 Months , 15 Days', 80, '2016-09-20 08:04:40'),
('Guard0', '2016-09-20', '40 Years , 10 Months , 20 Days', 65, '2016-09-20 09:04:43'),
('Guard14', '2016-09-20', '36 Years , 5 Months , 19 Days', 45, '2016-09-20 09:29:47'),
('Guard11', '2016-09-20', '26 Years , 6 Months , 20 Days', 65, '2016-09-20 11:25:06'),
('Guard17', '2016-09-20', '56 Years , 5 Months , ', 65, '2016-09-20 11:57:09'),
('Guard11', '2016-09-20', '26 Years , 6 Months , 20 Days', 65, '2016-09-20 01:59:56'),
('Guard11', '2016-10-27', '26 Years , 7 Months , 27 Days', 60, '2016-10-27 02:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `motherdeaths`
--

CREATE TABLE IF NOT EXISTS `motherdeaths` (
  `motherID` varchar(20) DEFAULT NULL,
  `motherName` varchar(100) DEFAULT NULL,
  `motherAreaCode` varchar(20) DEFAULT NULL,
  `date` date NOT NULL,
  `reason` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motherdeaths`
--

INSERT INTO `motherdeaths` (`motherID`, `motherName`, `motherAreaCode`, `date`, `reason`) VALUES
(NULL, 'H.K.Kamala Perera', 'A1', '2016-08-31', 'null'),
(NULL, 'H.L.Sirimawathi', 'A1', '2016-10-31', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `motherdiseases`
--

CREATE TABLE IF NOT EXISTS `motherdiseases` (
  `motherID` varchar(20) NOT NULL,
  `diseaseCode` varchar(20) NOT NULL,
  `diseaseName` varchar(100) DEFAULT NULL,
  `diseaseDate` date DEFAULT NULL,
  `diseaseNote` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `motherepidemics`
--

CREATE TABLE IF NOT EXISTS `motherepidemics` (
  `motherID` varchar(20) NOT NULL,
  `epidemicCode` varchar(20) NOT NULL,
  `epidemicName` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motherepidemics`
--

INSERT INTO `motherepidemics` (`motherID`, `epidemicCode`, `epidemicName`, `date`, `note`) VALUES
('Mother4', 'ep1', 'ahdbca', '2014-11-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `mothergivenvaccines`
--

CREATE TABLE IF NOT EXISTS `mothergivenvaccines` (
  `motherID` varchar(20) NOT NULL,
  `clinicDate` date DEFAULT NULL,
  `vaccineCode` varchar(20) NOT NULL,
  `vaccineAmount` float NOT NULL,
  `vaccineName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mothergivenvaccines`
--

INSERT INTO `mothergivenvaccines` (`motherID`, `clinicDate`, `vaccineCode`, `vaccineAmount`, `vaccineName`) VALUES
('Guard0', '2016-09-09', 'v0', 10, 'Maleria'),
('Guard8', '2016-09-12', 'v0', 10, 'Maleria'),
('Guard1', '2016-09-20', 'v1', 50, 'dengue'),
('Guard12', '2016-09-20', 'v1', 50, 'dengue'),
('Guard0', '2016-09-20', 'v1', 50, 'dengue'),
('Guard14', '2016-09-20', 'v1', 50, 'dengue'),
('Guard11', '2016-09-20', 'v1', 50, 'dengue'),
('Guard17', '2016-09-20', 'v1', 50, 'dengue'),
('Guard11', '2016-09-20', 'v1', 50, 'dengue'),
('Guard11', '2016-10-27', 'v1', 50, 'dengue');

-- --------------------------------------------------------

--
-- Table structure for table `mothervaccineamounts`
--

CREATE TABLE IF NOT EXISTS `mothervaccineamounts` (
  `vaccineCode` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mothervaccineamounts`
--

INSERT INTO `mothervaccineamounts` (`vaccineCode`, `age`, `amount`) VALUES
('v1', 30, 50);

-- --------------------------------------------------------

--
-- Table structure for table `motherweightcycle`
--

CREATE TABLE IF NOT EXISTS `motherweightcycle` (
  `maxAge` int(11) NOT NULL,
  `minAge` int(11) NOT NULL,
  `maxWeight` float NOT NULL,
  `minWeight` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `motherweightcycle`
--

INSERT INTO `motherweightcycle` (`maxAge`, `minAge`, `maxWeight`, `minWeight`) VALUES
(14600, 10950, 70, 67);

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE IF NOT EXISTS `supervisor` (
  `supervisorID` varchar(20) NOT NULL,
  `name` varchar(500) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `address` varchar(1000) NOT NULL,
  `startedDate` date NOT NULL,
  `supervisorPicture` varchar(500) NOT NULL,
  `dateOfRegistered` datetime DEFAULT NULL,
  PRIMARY KEY (`supervisorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`supervisorID`, `name`, `dateOfBirth`, `address`, `startedDate`, `supervisorPicture`, `dateOfRegistered`) VALUES
('Supervisor0', 'K.L.Siriwardana', '1930-12-02', 'Kadawatha, Ragama', '2011-10-10', 'supervisor/images/Supervisor0.jpeg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `triposha`
--

CREATE TABLE IF NOT EXISTS `triposha` (
  `id` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `triposha`
--

INSERT INTO `triposha` (`id`, `amount`, `date`) VALUES
('Guard0', 2, '2016-09-09'),
('Child0', 2, '2016-09-09'),
('Guard7', 2, '2016-09-09'),
('Guard8', 2, '2016-09-12'),
('Child3', 2, '2016-09-12'),
('Child5', 2, '2016-09-15'),
('Child8', 2, '2016-09-16'),
('Child0', 1, '2016-09-20'),
('Guard1', 2, '2016-09-20'),
('Guard0', 2, '2016-09-20'),
('Child14', 2, '2016-09-20'),
('Guard17', 2, '2016-09-20'),
('Guard11', 1, '2016-09-20'),
('Guard11', 1, '2016-10-27'),
('Child0', 2, '2016-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userID` varchar(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `userName`, `password`) VALUES
('Guard0', 'Guard0', '0'),
('Guard1', 'Guard1', '1'),
('Guard10', 'Guard10', '10'),
('Guard11', 'Guard11', '11'),
('Guard12', 'Guard12', '12'),
('Guard13', 'Guard13', '13'),
('Guard14', 'Guard14', '14'),
('Guard15', 'Guard15', '15'),
('Guard16', 'Guard16', '16'),
('Guard17', 'Guard17', '17'),
('Guard18', 'Guard18', '18'),
('Guard19', 'Guard19', '19'),
('Guard2', 'Guard2', '2'),
('Guard20', 'Guard20', '20'),
('Guard3', 'Guard3', '3'),
('Guard4', 'Guard4', '4'),
('Guard5', 'Guard5', '5'),
('Guard6', 'Guard6', '6'),
('Guard7', 'Guard7', '7'),
('Guard8', 'Guard8', '8'),
('Guard9', 'Guard9', '9'),
('Midwife0', 'Midwife0', '0'),
('Midwife1', 'Midwife1', '1'),
('Midwife2', 'Midwife2', '2'),
('Midwife3', 'Midwife3', '3'),
('Supervisor0', 'Supervisor0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE IF NOT EXISTS `vaccine` (
  `vaccineCode` varchar(20) NOT NULL,
  `vaccineName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`vaccineCode`, `vaccineName`) VALUES
('v0', 'Maleria'),
('v1', 'dengue');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
