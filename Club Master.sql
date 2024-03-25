-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 12:04 PM
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
-- Database: `clubmaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `astronomy_club`
--

CREATE TABLE `astronomy_club` (
  `clubID` int(11) NOT NULL,
  `studentID` varchar(10) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `dateRegistered` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `astronomy_club`
--

INSERT INTO `astronomy_club` (`clubID`, `studentID`, `studentName`, `dateRegistered`) VALUES
(10001, 'S2200003', 'Thenuki', '2023-11-29'),
(10002, 'S2200006', 'Demika', '2023-11-29'),
(10003, 'S2200007', 'Mandinu', '2023-11-29'),
(10004, 'S2200008', 'Ali', '2023-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `clubnames`
--

CREATE TABLE `clubnames` (
  `Names` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clubnames`
--

INSERT INTO `clubnames` (`Names`) VALUES
('Interact Club'),
('Leo Club'),
('Photographic Club'),
('Astronomy Club');

-- --------------------------------------------------------

--
-- Table structure for table `clubupdatedtime`
--

CREATE TABLE `clubupdatedtime` (
  `clubName` varchar(255) NOT NULL,
  `lastRenameTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `student_name` varchar(100) NOT NULL,
  `student_ID` char(8) NOT NULL,
  `clubID` varchar(100) NOT NULL,
  `club_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`student_name`, `student_ID`, `clubID`, `club_name`) VALUES
('Nikoya', 'S2200001', '10001', 'Interact Club'),
('Nikoya', 'S2200001', '10001', 'Leo Club'),
('Nikoya', 'S2200001', '10001', 'Photographic Club'),
('Sevindu', 'S2200002', '10002', 'Photographic Club'),
('Sevindu', 'S2200002', '10002', 'Leo Club'),
('Sevindu', 'S2200002', '10002', 'Interact Club'),
('Thenuki', 'S2200003', '10003', 'Interact Club'),
('Thenuki', 'S2200003', '10001', 'Astronomy Club'),
('Thenuki', 'S2200003', '10003', 'Photographic Club'),
('Nisal', 'S2200004', '10003', 'Leo Club'),
('Nisal', 'S2200004', '10004', 'Interact Club'),
('Nisal', 'S2200004', '10004', 'Photographic Club'),
('Demika', 'S2200006', '10005', 'Interact Club'),
('Demika', 'S2200006', '10005', 'Photographic Club'),
('Demika', 'S2200006', '10002', 'Astronomy Club'),
('Mandinu', 'S2200007', '10004', 'Leo Club'),
('Mandinu', 'S2200007', '10006', 'Photographic Club'),
('Mandinu', 'S2200007', '10003', 'Astronomy Club'),
('Ali', 'S2200008', '10006', 'Interact Club'),
('Ali', 'S2200008', '10007', 'Photographic Club'),
('Ali', 'S2200008', '10004', 'Astronomy Club');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eventName` varchar(300) NOT NULL,
  `club` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eventName`, `club`, `date`, `time`, `location`, `type`) VALUES
('Installation', 'Interact Club', '2023-11-30', '10:00:00', 'Online via Zoom', 'Activity'),
('Spandana', 'Leo Club', '2023-12-29', '14:00:00', 'Auditorium', 'Event'),
('Project1', 'Interact Club', '2023-12-29', '10:00:00', 'Auditorium', 'Activity');

-- --------------------------------------------------------

--
-- Table structure for table `interact_club`
--

CREATE TABLE `interact_club` (
  `clubID` int(11) NOT NULL,
  `studentID` varchar(10) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `dateRegistered` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interact_club`
--

INSERT INTO `interact_club` (`clubID`, `studentID`, `studentName`, `dateRegistered`) VALUES
(10001, 'S2200001', 'Nikoya', '2023-11-29'),
(10002, 'S2200002', 'Sevindu', '2023-11-29'),
(10003, 'S2200003', 'Thenuki', '2023-11-29'),
(10004, 'S2200004', 'Nisal', '2023-11-29'),
(10005, 'S2200006', 'Demika', '2023-11-29'),
(10006, 'S2200008', 'Ali', '2023-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `leo_club`
--

CREATE TABLE `leo_club` (
  `clubID` int(11) NOT NULL,
  `studentID` varchar(10) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `dateRegistered` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leo_club`
--

INSERT INTO `leo_club` (`clubID`, `studentID`, `studentName`, `dateRegistered`) VALUES
(10001, 'S2200001', 'Nikoya', '2023-11-29'),
(10002, 'S2200002', 'Sevindu', '2023-11-29'),
(10003, 'S2200004', 'Nisal', '2023-11-29'),
(10004, 'S2200007', 'Mandinu', '2023-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `photographic_club`
--

CREATE TABLE `photographic_club` (
  `clubID` int(11) NOT NULL,
  `studentID` varchar(10) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `dateRegistered` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photographic_club`
--

INSERT INTO `photographic_club` (`clubID`, `studentID`, `studentName`, `dateRegistered`) VALUES
(10001, 'S2200001', 'Nikoya', '2023-11-29'),
(10002, 'S2200002', 'Sevindu', '2023-11-29'),
(10003, 'S2200003', 'Thenuki', '2023-11-29'),
(10004, 'S2200004', 'Nisal', '2023-11-29'),
(10005, 'S2200006', 'Demika', '2023-11-29'),
(10006, 'S2200007', 'Mandinu', '2023-11-29'),
(10007, 'S2200008', 'Ali', '2023-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `fullname` varchar(300) NOT NULL,
  `studentid` char(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` char(150) NOT NULL,
  `question` varchar(300) NOT NULL,
  `answer` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`fullname`, `studentid`, `username`, `email`, `password`, `question`, `answer`) VALUES
('Nikoya Sathsarani', 'S2200001', 'Nikoya', 'nikoya@test.com', 'niko1234', 'What is your favorite book or movie?', 'Die Hard'),
('Sevindu Ranil', 'S2200002', 'Sevindu', 'sev@gmail.com', 'sevindu12345', 'What was the name of your first pet?', 'scooby'),
('Thenuki Rivinadi', 'S2200003', 'Thenuki', 'thenuki@gmail.com', 'thenuki123', 'In which city were you born?', 'Galle'),
('Nisal Rajakaruna', 'S2200004', 'Nisal', 'nisal@test.com', 'nisal1234', 'In which city were you born?', 'kiribathgoda'),
('Thedin Bandara', 'S2200005', 'Thedin', 'thedinbandara@gmail.com', 'thedin123', 'What is your favorite book or movie?', 'Harry Potter'),
('Demika de Silva', 'S2200006', 'Demika', 'demika@gmail.com', 'demika123', 'What is your favorite food?', 'pizza'),
('mandinu de Sarem', 'S2200007', 'Mandinu', 'mana@gmial.com', 'mandinu123', 'What is your favorite book or movie?', 'GOT'),
('Zahid Ali', 'S2200008', 'Ali', 'ali@test.com', 'ali123456', 'In which city were you born?', 'Negombo');

-- --------------------------------------------------------

--
-- Table structure for table `student_assign`
--

CREATE TABLE `student_assign` (
  `studentID` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_assign`
--

INSERT INTO `student_assign` (`studentID`, `username`) VALUES
('S2200001', 'Nikoya'),
('S2200002', 'Sevindu'),
('S2200003', 'Thenuki'),
('S2200004', 'Nisal'),
('S2200005', 'Thedin'),
('S2200006', 'Demika'),
('S2200007', 'Mandinu'),
('S2200008', 'Ali'),
('S2200009', 'Vihanga'),
('S2200010', 'Sethmika');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `advisorID` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `club` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`advisorID`, `username`, `club`) VALUES
('T2200001', 'SenudaL', 'Interact Club'),
('T2200002', 'Seth.K', 'Leo Club'),
('T2200003', 'Arunodh', 'Photographic Club'),
('T2200004', 'Damika', 'Astronomy Club');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(50) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `password`, `question`, `answer`, `role`) VALUES
('Nisitha.wick', 'wick.nisitha@gmail.com', 'Winter12345', 'In which city were you born?', 'Colombo', 'Admin'),
('SenudaL', 'senuda@gmail.com', 'Senuda123', 'What is your favorite book or movie?', 'Harry Potter', 'Advisor'),
('Nikoya', 'nikoya@test.com', 'niko1234', 'What is your favorite book or movie?', 'Die Hard', 'Student'),
('Seth.K', 'seth@gmail.com', 'seth123456', 'What is your favorite food?', 'kottu', 'Advisor'),
('Arunodh', 'arunodh@gmail.com', 'arunodh123', 'What is your favorite food?', 'pizza', 'Advisor'),
('Damika', 'damika@gmail.com', 'damika123', 'What is your favorite food?', 'rice', 'Advisor'),
('Sevindu', 'sev@gmail.com', 'sevindu12345', 'What was the name of your first pet?', 'scooby', 'Student'),
('Thenuki', 'thenuki@gmail.com', 'thenuki123', 'In which city were you born?', 'Galle', 'Student'),
('Nisal', 'nisal@test.com', 'nisal1234', 'In which city were you born?', 'kiribathgoda', 'Student'),
('Thedin', 'thedinbandara@gmail.com', 'thedin123', 'What is your favorite book or movie?', 'Harry Potter', 'Student'),
('Demika', 'demika@gmail.com', 'demika123', 'What is your favorite food?', 'pizza', 'Student'),
('Mandinu', 'mana@gmial.com', 'mandinu123', 'What is your favorite book or movie?', 'GOT', 'Student'),
('Ali', 'ali@test.com', 'ali123456', 'In which city were you born?', 'Negombo', 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `userupdatedtime`
--

CREATE TABLE `userupdatedtime` (
  `username` varchar(200) NOT NULL,
  `lastUpdatedTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `astronomy_club`
--
ALTER TABLE `astronomy_club`
  ADD PRIMARY KEY (`clubID`);

--
-- Indexes for table `interact_club`
--
ALTER TABLE `interact_club`
  ADD PRIMARY KEY (`clubID`);

--
-- Indexes for table `leo_club`
--
ALTER TABLE `leo_club`
  ADD PRIMARY KEY (`clubID`);

--
-- Indexes for table `photographic_club`
--
ALTER TABLE `photographic_club`
  ADD PRIMARY KEY (`clubID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `astronomy_club`
--
ALTER TABLE `astronomy_club`
  MODIFY `clubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;

--
-- AUTO_INCREMENT for table `interact_club`
--
ALTER TABLE `interact_club`
  MODIFY `clubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;

--
-- AUTO_INCREMENT for table `leo_club`
--
ALTER TABLE `leo_club`
  MODIFY `clubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;

--
-- AUTO_INCREMENT for table `photographic_club`
--
ALTER TABLE `photographic_club`
  MODIFY `clubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10008;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
