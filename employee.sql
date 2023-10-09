-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2023 at 10:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmployeeInfo` (IN `empID` INT)   BEGIN
    SELECT Lastname, Position, Salary
    FROM Employee
    WHERE EmployeeID = empID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmployeesBySalaryAndGender` (IN `gender` VARCHAR(10))   BEGIN
    SELECT Lastname, Gender, Position, Salary
    FROM Employee
    WHERE Gender = gender;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL,
  `Lastname` varchar(255) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Position` varchar(255) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `Lastname`, `Gender`, `Position`, `Salary`) VALUES
(1, 'Smith', 'Male', 'Manager', '60000.00'),
(2, 'Johnson', 'Female', 'Engineer', '55000.00'),
(3, 'Williams', 'Male', 'Analyst', '50000.00'),
(4, 'Jones', 'Male', 'Developer', '52000.00'),
(5, 'Brown', 'Female', 'Designer', '48000.00'),
(6, 'Davis', 'Male', 'Technician', '51000.00'),
(7, 'Miller', 'Female', 'Administrator', '49000.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
