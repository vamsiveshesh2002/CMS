-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 09:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uni`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `library_name` varchar(255) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `book_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`library_name`, `book_name`, `author`, `book_status`) VALUES
('North Campus Library', 'Basics of Database', 'Reda Alhajj', 'Unavailable'),
('North Campus Library', 'Harry Potter', 'J. K. Rowling', 'Available'),
('North Campus Library', 'Lord of The Rings', 'J.R.R Tolkien', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_name` varchar(255) NOT NULL,
  `AKTS` int(255) NOT NULL,
  `class_no` varchar(255) NOT NULL,
  `course_type` varchar(255) NOT NULL,
  `lecturer` varchar(255) NOT NULL,
  `prerequisite` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_name`, `AKTS`, `class_no`, `course_type`, `lecturer`, `prerequisite`, `semester`) VALUES
('Algorithm', 8, 'C-210', 'Technical', 'Prof X', 'Data Structures', 'Spring'),
('Calculus 2', 8, 'CZ-16', 'Technical', 'Mehmed Rafet ÖZDEMİR', 'Calculus 1', 'Fall'),
('Data Structures', 8, 'C-310', 'Technical', 'Hasan Fehmi Ateş', 'Object Oriented Programming', 'Fall'),
('Database', 8, 'C-210', 'Technical', 'Reda Alhajj', 'Object Oriented Programming', 'Spring'),
('Introduction to Programming', 6, 'C-211', 'Technical', 'Selim Akyokuş', 'NULL', 'Fall'),
('Machine Learning', 6, 'C-313', 'Non-Technical', 'Bahadır Kürşat Güntürk', 'NULL', 'Fall'),
('Microprocessor', 6, 'C-210', 'Technical', 'Mehmet Kocatürk', 'Introduction to Programming', 'Fall'),
('Object Oriented Programming', 8, 'C-212', 'Technical', 'Selim Akyokuş', 'Introduction to Programming', 'Spring'),
('Operating Systems', 8, 'CZ-16', 'Technical', 'Prof x', 'NULL', 'Spring'),
('Probability', 8, 'CZ-12', 'Technical', 'Mehmet Kemal Özdemir', 'Calculus 2', 'Spring'),
('Web Design', 8, 'C-315', 'Non technical', 'Muhsin Zahid Uğur', 'NULL', 'Spring');

-- --------------------------------------------------------

--
-- Table structure for table `dining`
--

CREATE TABLE `dining` (
  `date` date NOT NULL,
  `dining_name` varchar(255) NOT NULL,
  `soup` varchar(255) NOT NULL,
  `main_dish` varchar(255) NOT NULL,
  `side_dish` varchar(255) NOT NULL,
  `dessert` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dining`
--

INSERT INTO `dining` (`date`, `dining_name`, `soup`, `main_dish`, `side_dish`, `dessert`) VALUES
('2020-06-19', 'North Campus Dining Hall', 'Tomato Soup', 'Sambar Rice', 'Chapati', 'Fruit Salad'),
('2020-06-20', 'North Campus Dining Hall', 'Corn Soup', 'Biryani', 'Garlic Paneer', 'Puding\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `course_name` varchar(255) NOT NULL,
  `exam_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`course_name`, `exam_name`) VALUES
('Algorithm', 'Algorithm Final'),
('Algorithm', 'Algorithm Midterm'),
('Database', 'Database Final'),
('Database', 'Database Midterm');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `lecturer_name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `advised_st_id` int(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lecturer_name`, `website`, `birthdate`, `email`, `degree`, `role`, `course_name`, `advised_st_id`, `department`) VALUES
('prof X', '', '1967-11-12', 'profx@vitap.ac.in', 'Prof.', 'Deputy Dean', 'Operating Systems', 0, 'Scope'),
('prof Y', '', '1977-11-01', 'profy@vitap.ac.in', 'Dr', 'Lecturer', 'DBMS', 0, 'Scope');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `program_name` varchar(255) NOT NULL,
  `est_semester_duration` int(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `other_uni_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`program_name`, `est_semester_duration`, `student_id`, `other_uni_name`) VALUES
('Erasmus', 2, '20BCE7604', 'Harvard University'),
('Mevlana', 1, '20BCN7026', 'Standford University');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `advisor_name` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `scholarship` varchar(255) NOT NULL,
  `grade` int(255) NOT NULL,
  `emp_type` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthdate`, `course_code`, `advisor_name`, `degree`, `scholarship`, `grade`, `emp_type`, `department`, `email`) VALUES
('20BCE7376', 'Vennala Roshini', '1998-06-16', 'Microprocessor', 'Prof Y', 'Undergrad', 'Full Scholarship', 8, 'Probability TA', 'Computer Science & Engineering', 'roshini@vitap.ac.in'),
('20BCE7476', 'Vamsi Vishesh', '1998-10-17', 'Database', 'Prof X', 'Undergrad', 'Full Scholarship', 9, 'Advanced Programming TA', 'Computer Science & Engineering', 'vamsi@vitap.ac.in'),
('20BCE7604', 'Venkatesh Rout', '1998-06-16', 'Algorithm', 'Prof X', 'Undergrad', 'Full Scholarship', 8, 'Probability TA', 'Computer Science & Engineering', 'venkatesh@vitap.ac.in'),
('20BCI7313', 'Dileep Chandu', '1998-10-17', 'Database', 'Prof Y', 'Undergrad', 'Full Scholarship', 9, 'Advanced Programming TA', 'Computer Science & Engineering', 'dileep@vitap.ac.in'),
('20BCN7026', 'Rithy Raichel', '1997-06-09', 'Machine Learning', 'Prof Y', 'Undergrad', 'Half Scholarship', 9, 'NULL', 'Computer Science & Engineering', 'rithy@vitap.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `student_book`
--

CREATE TABLE `student_book` (
  `student_id` varchar(255) NOT NULL,
  `book_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_book`
--

INSERT INTO `student_book` (`student_id`, `book_name`) VALUES
('20BCE7476', 'Lord of The Rings'),
('20BCE7604', 'Harry Potter');

-- --------------------------------------------------------

--
-- Table structure for table `student_club`
--

CREATE TABLE `student_club` (
  `club_name` varchar(255) NOT NULL,
  `leader_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_club`
--

INSERT INTO `student_club` (`club_name`, `leader_id`) VALUES
('Android CLub', '20BCE7376'),
('BAN', '20BCE7476'),
('CSI', '20BCE7604'),
('IEEE', '20BCN7026');

-- --------------------------------------------------------

--
-- Table structure for table `student_club_participants`
--

CREATE TABLE `student_club_participants` (
  `leader_id` varchar(11) NOT NULL,
  `participant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_club_participants`
--

INSERT INTO `student_club_participants` (`leader_id`, `participant_id`) VALUES
('61170008', 64160001),
('62160008', 0),
('62160008', 64160021),
('63150012', 64160002),
('63150012', 64160021),
('64160014', 64160002),
('62160008', 0),
('62160008', 0),
('62160008', 0),
('63150012', 64160021),
('63150012', 64160021),
('61170008', 64160021);

-- --------------------------------------------------------

--
-- Table structure for table `student_current_course`
--

CREATE TABLE `student_current_course` (
  `course_name` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_current_course`
--

INSERT INTO `student_current_course` (`course_name`, `student_id`) VALUES
('Algorithm', '20BCN7026'),
('Database', '20BCE7604'),
('Web Design', '20BCE7476');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam`
--

CREATE TABLE `student_exam` (
  `exam_name` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `grade` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_exam`
--

INSERT INTO `student_exam` (`exam_name`, `student_id`, `grade`) VALUES
('Algorithm Final', '20BCE7604', 80),
('Algorithm Midterm', '20BCE7604', 90),
('Database Final', '20BCE7476', 95),
('Database Midterm', '20BCE7476', 85),
('Software Final', '20BCE7376', 80);

-- --------------------------------------------------------

--
-- Table structure for table `student_past_courses`
--

CREATE TABLE `student_past_courses` (
  `student_id` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `final_grade` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_past_courses`
--

INSERT INTO `student_past_courses` (`student_id`, `course_name`, `final_grade`) VALUES
('20BCE7476', 'Data Structures', 70),
('20BCE7476', 'Introduction to Programing', 87),
('20BCE7476', 'Object Oriented Programming', 86),
('20BCE7476', 'Operating System', 87),
('20BCE7604', 'Introduction to Programing', 87),
('20BCE7604', 'Introduction to Programming', 89),
('20BCE7604', 'Object Oriented Programming', 98);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL,
  `roll` varchar(11) NOT NULL,
  `attend` varchar(255) NOT NULL,
  `att_time` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`id`, `roll`, `attend`, `att_time`) VALUES
(1, '20BCE7476', 'absent', '2019-01-16'),
(2, '20BCE7604', 'present', '2019-01-16'),
(3, '20BCN7036', 'absent', '2019-01-16'),
(4, '20BCI7313', 'absent', '2019-01-16'),
(5, '20BCE7376', 'present', '2019-01-16'),
(6, '20BCI7312', 'present', '2019-01-16'),
(7, '20BCI7189', 'absent', '2019-01-16'),
(9, '20BCE7476', 'present', '2019-01-17'),
(10, '20BCE7604', 'present', '2019-01-17'),
(11, '20BCN7036', 'absent', '2019-01-17'),
(12, '20BCI7313', 'absent', '2019-01-17'),
(13, '20BCE7376', 'present', '2019-01-17'),
(14, '20BCI7312', 'absent', '2019-01-17'),
(15, '20BCI7189', 'present', '2019-01-17'),
(31, '20BCI7312', 'absent', '2019-01-18'),
(30, '20BCE7376', 'absent', '2019-01-18'),
(29, '20BCI7313', 'present', '2019-01-18'),
(28, '20BCN7036', 'present', '2019-01-18'),
(27, '20BCE7604', 'present', '2019-01-18'),
(26, '20BCE7476', 'present', '2019-01-18'),
(32, '20BCI7189', 'present', '2019-01-18'),
(33, '20BCE7476', 'present', '2022-11-24'),
(34, '20BCE7604', 'present', '2022-11-24'),
(35, '20BCN7036', 'present', '2022-11-24'),
(36, '20BCI7313', 'present', '2022-11-24'),
(37, '20BCE7376', 'present', '2022-11-24'),
(38, '20BCI7312', 'present', '2022-11-24'),
(39, '20BCI7189', 'present', '2022-11-24'),
(40, '10', '', '0000-00-00'),
(41, '20BCE7476', 'present', '2022-11-25'),
(42, '20BCE7604', 'absent', '2022-11-25'),
(43, '20BCN7036', 'present', '2022-11-25'),
(44, '20BCI7313', 'present', '2022-11-25'),
(45, '20BCE7376', 'absent', '2022-11-25'),
(46, '20BCI7312', 'present', '2022-11-25'),
(47, '20BCI7189', 'present', '2022-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roll` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`id`, `name`, `roll`) VALUES
(1, 'Vamsi Vishesh', '20BCE7476'),
(2, 'Venkatesh Rout', '20BCE7604'),
(3, 'Rithy Raichel', '20BCN7026'),
(4, 'Dileep Chandu', '20BCI7313'),
(5, 'Navdeep Kumar', '20BCE7376'),
(6, 'Puneeth', '20BCI7312'),
(7, 'Deekshita', '20BCI7189');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`email`, `name`, `password`, `phone`, `type`) VALUES
('profx@vitap.ac.in', 'prof X', 'abcd1234', '5351234546', 'lecturer'),
('profy@vitap.ac.in', 'prof Y', 'abcd1234', '12312312', 'lecturer'),
('vamsi@vitap.ac.in', 'Vamsi Vishesh', 'abcd1234', '5351234546', 'student'),
('venkatesh@vitap.ac.in', 'Venkatesh Rout', 'abcd1234', '5351234546', 'student'),
('xyz@vitap.ac.in', 'Vamsi', 'abcd1234', '1234567890', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`library_name`,`book_name`,`author`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_name`);

--
-- Indexes for table `dining`
--
ALTER TABLE `dining`
  ADD PRIMARY KEY (`date`,`dining_name`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`course_name`,`exam_name`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`program_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_book`
--
ALTER TABLE `student_book`
  ADD PRIMARY KEY (`student_id`,`book_name`);

--
-- Indexes for table `student_club`
--
ALTER TABLE `student_club`
  ADD PRIMARY KEY (`club_name`);

--
-- Indexes for table `student_exam`
--
ALTER TABLE `student_exam`
  ADD PRIMARY KEY (`exam_name`,`student_id`);

--
-- Indexes for table `student_past_courses`
--
ALTER TABLE `student_past_courses`
  ADD PRIMARY KEY (`student_id`,`course_name`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
