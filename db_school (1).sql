-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 09:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_school`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_Add_New_Person` (IN `Input_Last_Name` VARCHAR(30), IN `Input_First_Name` VARCHAR(30), IN `Input_Middle_Name` VARCHAR(30), IN `Input_Extension_Name` VARCHAR(6), IN `Input_Sex` CHAR(1), IN `Input_Birth_Date` DATE, IN `Input_Age` INT(2), IN `Input_Home_Address` VARCHAR(75), IN `Input_Civil_Status` VARCHAR(12), IN `Input_Religion` VARCHAR(20), IN `Input_Nationality` VARCHAR(20), IN `Input_Boarding_Address` VARCHAR(75), IN `Input_Contact_Number` CHAR(11), IN `Input_Email_Address` VARCHAR(25))   BEGIN
    
    	INSERT INTO `person` (`Last_Name`, `First_Name`,`Middle_Name`, `Extension_Name`, `Sex`, `Birth_Date`, `Age`, `Home_Address`, `Civil_Status`, `Religion`, `Nationality`,`Boarding_Address`, `Contact_Number`, `Email_Address`) VALUES(Input_Last_Name,Input_First_Name,Input_Middle_Name,                                                      Input_Extension_Name,Input_Sex,Input_Birth_Date,Input_Age,                                                       Input_Home_Address,Input_Civil_Status,Input_Religion,Input_Nationality,                                                          Input_Boarding_Address,nput_Contact_Number,Input_Email_Address);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `Person_ID` int(9) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Middle_Name` varchar(30) NOT NULL,
  `Extension_Name` varchar(6) NOT NULL,
  `Sex` char(1) NOT NULL,
  `Birth_Date` date NOT NULL,
  `Age` int(2) NOT NULL,
  `Home_Address` varchar(75) NOT NULL,
  `Civil_Status` varchar(12) NOT NULL,
  `Religion` varchar(20) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `Boarding_Address` varchar(75) NOT NULL,
  `Contact_Number` char(11) NOT NULL,
  `Email_Address` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`Person_ID`, `Last_Name`, `First_Name`, `Middle_Name`, `Extension_Name`, `Sex`, `Birth_Date`, `Age`, `Home_Address`, `Civil_Status`, `Religion`, `Nationality`, `Boarding_Address`, `Contact_Number`, `Email_Address`) VALUES
(2, 'Jeana Marie', 'Malazzab', 'Malazzabjr.', 'jr.', 'F', '2023-09-13', 22, 'Dalla', 'Maried', 'Catholic', 'Filipino', 'Dalla', '09057516134', 'jeanamariecipriano@gmail.'),
(3, 'Cipriano', 'Jeana Marie', 'Malazzab', 'jr.', 'F', '2023-09-07', 22, 'Dalla', 'Maried', 'Catholic', 'Filipino', 'Dalla', '09057516134', 'jeanamariecipriano@gmail.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`Person_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `Person_ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
