-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2020 at 09:55 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oes_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`) VALUES
(1, '9275', 'Department was added successfully'),
(2, '1185', 'Duplicate record found'),
(3, '5426', 'Could not add department'),
(4, '7823', 'Settings applied successfully'),
(5, '1298', 'Could not apply settings'),
(6, '1289', 'Category was added successfully'),
(7, '7732', 'Could not add category'),
(8, '3598', 'Subject was added successfully'),
(9, '1925', 'Could not add subject'),
(10, '6310', 'Student was added successfully, default password is 123456'),
(11, '9157', 'Could not register student'),
(12, '2074', 'Duplicate phone number found'),
(13, '1189', 'Duplicate email found'),
(14, '2932', 'Examination was added successfully'),
(15, '7788', 'Could not add examination'),
(16, '0357', 'New question was added successfully'),
(17, '3903', 'Could not add question'),
(18, '9174', 'Notice was added successfully'),
(19, '6389', 'Could not add notice'),
(20, '9135', 'You must be admin to access the control panel'),
(21, '9422', 'You must login first'),
(22, '0912', 'Invalid username or password'),
(23, '9122', 'You must be a student to acces the exams'),
(24, '5732', 'Your account has been disabled'),
(25, '8924', 'Account not found'),
(26, '1804', 'New password has been sent to you through your email'),
(27, '1100', 'Could not reset your password');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assessment_records`
--

CREATE TABLE `tbl_assessment_records` (
  `record_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `score` varchar(255) NOT NULL,
  `score_mm` varchar(10) NOT NULL,
  `score_eng` varchar(10) NOT NULL,
  `score_phy` varchar(10) NOT NULL,
  `status` varchar(255) NOT NULL,
  `next_retake` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_assessment_records`
--

INSERT INTO `tbl_assessment_records` (`record_id`, `student_id`, `student_name`, `exam_name`, `exam_id`, `score`, `score_mm`, `score_eng`, `score_phy`, `status`, `next_retake`, `date`) VALUES
('RS74033233094181', 'S997-096-459', 'Muh Fauzan Bakri', 'Sipencatar 2', 'S2-552798', '4', '4', '0', '0', 'FAIL', '03/21/2020', '03/21/2020');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `category_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `date_registered` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`category_id`, `name`, `department`, `date_registered`, `status`) VALUES
('CT-565967', 'Sipencatar', 'Perguruan Tinggi', '11-03-2020', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departments`
--

CREATE TABLE `tbl_departments` (
  `department_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_registered` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_departments`
--

INSERT INTO `tbl_departments` (`department_id`, `name`, `date_registered`, `status`) VALUES
('DP-129418', 'Perguruan Tinggi', '15-02-2020', 'Active'),
('DP-396580', 'SMP', '15-02-2020', 'Active'),
('DP-614181', 'SD', '15-02-2020', 'Active'),
('DP-696528', 'SMA', '15-02-2020', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_examinations`
--

CREATE TABLE `tbl_examinations` (
  `exam_id` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `exam_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `duration` int(255) NOT NULL,
  `passmark` int(255) NOT NULL,
  `passmark_mm` int(10) NOT NULL,
  `passmark_eng` int(10) NOT NULL,
  `passmark_phy` int(10) NOT NULL,
  `re_exam` int(255) NOT NULL,
  `terms` longtext NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_examinations`
--

INSERT INTO `tbl_examinations` (`exam_id`, `category`, `subject`, `exam_name`, `date`, `duration`, `passmark`, `passmark_mm`, `passmark_eng`, `passmark_phy`, `re_exam`, `terms`, `status`) VALUES
('EX-020302', 'Sipencatar', 'SIPENCATAR', 'Umum', '03/30/2020', 60, 2, 0, 0, 0, 0, 'Sadasdasdsad sdsad asdsad', 'Active'),
('EX-689267', 'Sipencatar', 'SIPENCATAR', 'Dsadsa', '03/22/2020', 1, 1, 0, 0, 0, 0, 'Sdadsa', 'Active'),
('S1-191095', 'Sipencatar', 'SIPENCATAR', 'Teeeeeeessssssssssssss 1', '03/22/2020', 1, 0, 10, 10, 0, 0, 'Sfasdsafafs', 'Active'),
('S1-317981', 'Sipencatar', 'SIPENCATAR', 'Sipencatar 1', '03/31/2020', 1, 0, 10, 10, 0, 0, 'PERHATIAN! Jangan memuat halaman pada saat ujian dimulai!<br>\r\n\r\nUjian SIPENCATAR 1 ini terdiri dari soal <br>\r\nMatematika : 40 soal<br>\r\nBahasa Inggris : 35 soal', 'Active'),
('S2-552798', 'Sipencatar', 'SIPENCATAR', 'Sipencatar 2', '03/31/2020', 1, 0, 3, 4, 2, 0, 'PERHATIAN! Jangan memuat halaman pada saat ujian dimulai!<br>\r\nUjian SIPENCATAR 2 ini terdiri dari soal<br>\r\nMatematika : 30 soal<br>\r\nFisika: 15 soal <br>\r\nBahasa Inggris : 30 soal<br>', 'Active'),
('S2-953430', 'Sipencatar', 'SIPENCATAR', 'Tessssss 2', '03/29/2020', 1, 0, 9, 7, 6, 0, 'Dasdsadasd', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice`
--

CREATE TABLE `tbl_notice` (
  `id` int(255) NOT NULL,
  `notice_id` varchar(255) NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `last_update` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notice`
--

INSERT INTO `tbl_notice` (`id`, `notice_id`, `post_date`, `last_update`, `description`, `title`) VALUES
(1, 'NT-60920607', '19/12/2017 01:16:53', '19/12/2017 01:16:53', 'every student is required to take his/her assessment on time, fail to do that the instructor wont re-enable the assessment again.', 'Assessments');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE `tbl_questions` (
  `question_id` varchar(255) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `question` longtext NOT NULL,
  `option1` varchar(255) NOT NULL DEFAULT '-',
  `option2` varchar(255) NOT NULL DEFAULT '-',
  `option3` varchar(255) NOT NULL DEFAULT '-',
  `option4` varchar(255) NOT NULL DEFAULT '-',
  `answer` varchar(255) NOT NULL,
  `time_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`question_id`, `exam_id`, `type`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`, `time_add`) VALUES
('QS-000658', 'S2-552798', 'MC', 'hlkk', 'kllkj', 'lj', 'kljkl', 'jkl', 'option1', '2020-03-20 19:32:32'),
('QS-002951', 'S1-317981', 'MC', 'jhgjhgjhgj', 'kjkjhjk', 'jgjhg', ' kjg', 'kjgk', 'option1', '2020-03-20 19:18:25'),
('QS-005152', 'S2-552798', 'MC', 'kljljk', 'ljkjklj', 'kjhj', 'kh', 'jkh', 'option1', '2020-03-20 19:35:14'),
('QS-012496', 'S2-552798', 'MC', 'kjkj', 'jkhkj', 'hkj', 'hkj', 'hjh', 'option1', '2020-03-20 19:31:22'),
('QS-020603', 'S2-552798', 'MC', 'oiuio', 'uoiuiou', 'yjkhjk', 'hjkhjkf', 'df', 'option1', '2020-03-20 19:37:18'),
('QS-023413', 'S2-552798', 'MC', 'hjkhjkh', 'jhkjhkj', 'kjhkj', 'hkj', 'h', 'option1', '2020-03-20 19:32:39'),
('QS-030268', 'S2-552798', 'MC', 'opipoi', 'ojhgg', 'jhghj', 'gjhgjkg', 'kj', 'option1', '2020-03-20 19:34:48'),
('QS-035991', 'S2-552798', 'MC', 'kkjhjk', 'hgkjg', 'khlkhl', 'l;lk;l', 'kjjhf', 'option1', '2020-03-20 19:33:05'),
('QS-041716', 'S1-317981', 'MC', 'hsadas', 'b', 'jskahkd', 'lsfjal', ';sfasj', 'option1', '2020-03-20 19:10:02'),
('QS-044580', 'S1-317981', 'MC', 'jghjgjhg', 'lkhl', 'gjg', 'jhg', 'jhgj', 'option1', '2020-03-20 19:15:39'),
('QS-054097', 'S2-552798', 'MC', 'aasd', 'b', 'asdsad', 'aa', 'aaaaa', 'option1', '2020-03-20 15:45:59'),
('QS-055037', 'S1-317981', 'MC', 'khsafjka', 'ksahjaksdh', 'jh', 'jkhj', 'jkhjk', 'option1', '2020-03-20 19:13:02'),
('QS-061225', 'S2-552798', 'MC', 'mjkhkh', 'klhlk', 'lkhlkh', 'lkhlh', 'kll', 'option1', '2020-03-20 19:32:58'),
('QS-063666', 'S2-552798', 'MC', 'jhjkhjhjk', 'jkhjkh', 'jh', 'jhjkhkjh', 'jkhjk', 'option1', '2020-03-20 19:32:53'),
('QS-085540', 'S1-317981', 'MC', 'sadlkjasldj', 'b', 'khasklfha', 'lkj', 'lkkj', 'option1', '2020-03-20 19:11:28'),
('QS-099493', 'S2-552798', 'MC', 'kjjkh', 'jkh', 'kjh', 'jh', 'kjh', 'option1', '2020-03-20 19:36:48'),
('QS-116918', 'S2-552798', 'MC', 'poiupoipo', ' jkhjgjhf', 'hgjhfj', 'hjhgj ', 'gjhg', 'option1', '2020-03-20 19:36:38'),
('QS-119377', 'S1-317981', 'MC', 'jkgjgj', 'jkhkjhk', 'jk', 'hkj', 'hkj', 'option1', '2020-03-20 19:16:04'),
('QS-127252', 'S1-317981', 'MC', 'kjhkj', 'khkj ', 'khk', 'hk', 'hkh', 'option1', '2020-03-20 19:13:10'),
('QS-135643', 'S1-317981', 'MC', 'hjkhj', 'jkh', ' jhghjg', 'kkh', 'kkh', 'option1', '2020-03-20 19:15:08'),
('QS-140336', 'S1-317981', 'MC', 'kjhjhj', 'kkhkj', 'kg', 'kjg', 'g', 'option1', '2020-03-20 19:15:32'),
('QS-141243', 'S1-317981', 'MC', 'saljflasfj', 'kjhjkhjk', 'kjh', 'kjh', 'kjhkjh', 'option1', '2020-03-20 19:17:20'),
('QS-141912', 'S1-317981', 'MC', 'sadsad', 'b', 'djsakh', 'b y', 'uigi', 'option1', '2020-03-20 19:09:08'),
('QS-145625', 'S2-552798', 'MC', 'll;jlkj', 'lkj', 'hgfjh', 'fjh', 'fjh', 'option1', '2020-03-20 19:36:09'),
('QS-149911', 'S1-317981', 'MC', 'bvjjhg', 'b', 'hjhkj', 'hkjh', 'k', 'option1', '2020-03-20 19:14:00'),
('QS-162381', 'S2-552798', 'MC', 'jgpojlk', 'jfkdjh', 'jhfjhfjh', 'fhj', 'fjhf', 'option1', '2020-03-20 19:36:00'),
('QS-170038', 'S1-317981', 'MC', 'kjhkjhjk', 'hkjhjk ', 'kj', 'gjk k', ' jk', 'option1', '2020-03-20 19:16:55'),
('QS-181270', 'S1-317981', 'MC', 'sajdhaskjdh', 'b', 'ksjahdaoi', 'lksfao', 'oufsad', 'option1', '2020-03-20 19:10:14'),
('QS-183277', 'S1-317981', 'MC', 'kjgkjkfkj', 'kjhkjh', 'khk', ' k', 'dfsf', 'option1', '2020-03-20 19:17:05'),
('QS-185260', 'S1-317981', 'MC', 'jkshfjkah', 'b', 'lksdfhsak', ' ', 'kjhk', 'option1', '2020-03-20 19:11:19'),
('QS-186157', 'S2-552798', 'MC', 'kjkhjkh', 'jhjkjk', 'jkh', 'jkhkjh', 'kjhkj', 'option1', '2020-03-20 19:31:31'),
('QS-186581', 'S2-552798', 'MC', 'kjhkhlkh', 'lhlkh', 'hfjh', 'jhkl', 'hlkhl', 'option1', '2020-03-20 19:36:15'),
('QS-189638', 'S2-552798', 'MC', 'ilklkh', 'lgk', 'jhg', 'jhjh', 'g', 'option1', '2020-03-20 19:34:52'),
('QS-200656', 'S1-317981', 'MC', 'jhghf', 'hgjhjg', 'fhgf', 'ghf hf', 'hgj', 'option1', '2020-03-20 19:18:46'),
('QS-202332', 'S1-317981', 'MC', 'tuifivjh', 'gigib', 'giugiug', 'gigjhg', 'bnkgkjg', 'option1', '2020-03-20 19:17:36'),
('QS-216777', 'S1-317981', 'MC', 'nomorrr 14', 'b', 'kjdsalkdj', 'ljsalkdja', 'lkjsalkd', 'option1', '2020-03-20 19:10:36'),
('QS-218293', 'S2-552798', 'MC', 'lkjlkjlk', ' kj', 'h', 'jkh', 'kjhkj', 'option1', '2020-03-20 19:38:11'),
('QS-219594', 'S2-552798', 'MC', 'jyjkjkhjk', 'jkhj ', 'jkhjk', 'hjkhjk', 'jhkjk', 'option1', '2020-03-20 19:32:19'),
('QS-229201', 'S2-552798', 'MC', 'n', 'nm', 'jh', 'gjhg', 'jh', 'option1', '2020-03-20 19:33:46'),
('QS-238067', 'S1-317981', 'MC', 'gfgf', 'fgghfh', 'fhg', 'fhgf', 'hfhg', 'option1', '2020-03-20 19:18:38'),
('QS-241418', 'S1-317981', 'MC', 'nomor 23', 'b', 'kjsfnak', 'jkh', 'khkj', 'option1', '2020-03-20 19:12:18'),
('QS-249021', 'S2-552798', 'MC', 'jhjkhkj', 'jkhjk ', 'hjkh', 'kjh', 'jkhjk', 'option1', '2020-03-20 19:32:02'),
('QS-254264', 'S2-552798', 'MC', 'm', 'hh', 'gh', 'ghjg', 'g', 'option1', '2020-03-20 19:34:42'),
('QS-256260', 'S1-317981', 'MC', 'fsdmfn,m', 'b', 'jksahdkj', 'jh', 'kh', 'option1', '2020-03-20 19:11:40'),
('QS-264066', 'S1-317981', 'MC', 'kjhkjh', 'kjhjk', 'hkjjk', 'hjk', 'hk', 'option1', '2020-03-20 19:14:06'),
('QS-265172', 'S2-552798', 'MC', 'kkjhkh', 'kjhkjhjh', 'gkjg', 'kjg', 'kjgk', 'option1', '2020-03-20 19:38:28'),
('QS-272416', 'S2-552798', 'MC', 'jhgjh', 'gjhg', 'h', 'jkhkj', 'hj', 'option1', '2020-03-20 19:32:27'),
('QS-276775', 'S2-552798', 'MC', 'hghj', 'gjhg', 'jhg jh', 'ghj', 'gjh', 'option1', '2020-03-20 19:36:41'),
('QS-280758', 'S2-552798', 'MC', 'kh', 'klhlk', 'jhkj', 'hgkjg', 'hkjhjh', 'option1', '2020-03-20 19:34:18'),
('QS-280956', 'S2-552798', 'MC', 'jgk;,m;', 'bjkgjhg', 'gh', 'gjhg', 'jhg', 'option1', '2020-03-20 19:35:07'),
('QS-288884', 'S2-552798', 'MC', 'sadsadsadasd', 'sadasd', 'asdasd', 'asdasd', 'b', 'option4', '2020-03-20 15:41:42'),
('QS-304636', 'S2-552798', 'MC', 'oiuiouoi', 'ujulkklh', 'hjk', 'hk', 'h', 'option1', '2020-03-20 19:37:07'),
('QS-309977', 'S2-552798', 'MC', 'sdadsa', 'hdsajk jsa', ' ', 'j', 'jjkjh', 'option1', '2020-03-20 19:31:17'),
('QS-315042', 'S2-552798', 'MC', 'lk', 'jkjlkj', 'kjh', 'jkh', 'kjh', 'option1', '2020-03-20 19:36:20'),
('QS-320441', 'S1-317981', 'MC', 'sdsadsad', 'asdsad', 'b', ' sdsad', 'sadsad', 'option1', '2020-03-20 16:46:00'),
('QS-324070', 'S2-552798', 'MC', 'kjlkhlkjlkj', ' l ', 'hgg', 'jhg', 'jhgj', 'option1', '2020-03-20 19:36:57'),
('QS-329610', 'S2-552798', 'MC', 'iouoiu', 'bmndghdgh', ' kjhjk', ' kjh', ' kk', 'option1', '2020-03-20 19:37:37'),
('QS-334570', 'S1-317981', 'MC', 'lkjjkjo', 'jkgjkgjk', 'jgkjgk', 'kjhk', 'jhkh', 'option1', '2020-03-20 19:13:24'),
('QS-347856', 'S2-552798', 'MC', 'ljkj', 'klkhdg', 'jh', 'kjhjk', 'hjk', 'option1', '2020-03-20 19:34:24'),
('QS-351515', 'S2-552798', 'MC', 'jkhkjhjk', 'hjkhjkhjk', 'jkhjk', 'hjk', 'hjkhjkh', 'option1', '2020-03-20 19:31:43'),
('QS-368584', 'S1-317981', 'MC', 'jhgjhsdh', 'b', 'jhghjg', 'jhgjh', 'gjh', 'option1', '2020-03-20 19:12:45'),
('QS-402332', 'S1-317981', 'MC', 'kjkjh', 'kjkhk', 'hkh', 'kh', 'k', 'option1', '2020-03-20 19:13:30'),
('QS-404406', 'S1-317981', 'MC', 'jk', 'hkjh ', 'khkj', 'h', 'kh', 'option1', '2020-03-20 19:13:37'),
('QS-415244', 'S2-552798', 'MC', 'lkjkl', 'jlkjlkjlk', 'jlkjlkjlk', 'jlkj', 'lkj', 'option1', '2020-03-20 19:31:37'),
('QS-420614', 'S2-552798', 'MC', 'l;l;kl;k', 'ydddgfs', ' jhghj ', 'jghj ', 'j jgjh', 'option1', '2020-03-20 19:37:30'),
('QS-422350', 'S1-317981', 'MC', 'nnbmbmn', 'huhkjh', 'kj', 'hkjhjk', 'hkjhkjhkj', 'option1', '2020-03-20 19:16:46'),
('QS-423080', 'S1-317981', 'MC', 'jhgjhghj', 'kjh', 'jghjgjh', 'jgjhfjh', 'kjgkjkj', 'option1', '2020-03-20 19:18:17'),
('QS-431783', 'S2-552798', 'MC', 'jkhjkh', 'hjkhjkhk', 'jhjkhk', 'khkjhk', 'kkhkh', 'option1', '2020-03-20 19:31:50'),
('QS-440168', 'S1-317981', 'MC', 'hkkjhjkh', 'b', 'kjhj', 'khkj', 'h', 'option1', '2020-03-20 19:14:25'),
('QS-444467', 'S1-317981', 'MC', 'kjjjkgjk', 'uuihi', 'hkjh', 'jkhkj', 'hkj', 'option1', '2020-03-20 19:17:28'),
('QS-446490', 'S2-552798', 'MC', 'ugjgjh', 'ghjgj', 'hjghjgj', 'hgjhgjhl', 'lkjlk', 'option1', '2020-03-20 19:34:11'),
('QS-453859', 'S1-317981', 'MC', 'nomooorrrr 10', 'b', 'mkldalsj', 'lksadjalk', 'jdlsajd', 'option1', '2020-03-20 19:09:38'),
('QS-456076', 'S1-317981', 'MC', 'sfasf', 'b', 'jdhsajkd', 'hdai', 'o', 'option1', '2020-03-20 19:09:18'),
('QS-456244', 'S1-317981', 'MC', 'jhfjhfhj', 'iuhkjhkj', 'gkj', 'gkjgkjgkj', 'kjgkj', 'option1', '2020-03-20 19:17:43'),
('QS-461033', 'S2-552798', 'MC', 'jhkjhkj', 'hjk', 'hjg', 'hfjh', 'gjhf', 'option1', '2020-03-20 19:35:36'),
('QS-461910', 'S2-552798', 'MC', 'ikljlkj', 'dfgd', 'jhjk', 'hkjhk', 'jhkjh', 'option1', '2020-03-20 19:34:29'),
('QS-471971', 'S1-317981', 'MC', 'hjkhkjh', 'hjk', 'jhj', 'h', 'kjh', 'option1', '2020-03-20 19:15:14'),
('QS-476854', 'S1-317981', 'MC', 'nhjkhkj', 'khjk', 'kjhkjh', 'vjhg', 'kh', 'option1', '2020-03-20 19:14:34'),
('QS-503878', 'S2-552798', 'MC', 'jkgjkgjkj', 'kgkjgkj', 'gjk', 'gkjgkjgk', 'gkg', 'option1', '2020-03-20 19:35:55'),
('QS-508450', 'S2-552798', 'MC', 'hjghjhj', 'ghj ', 'hjg', 'jhgjh', 'jkkj', 'option1', '2020-03-20 19:33:52'),
('QS-518220', 'S2-552798', 'MC', 'awqrqwr', 'a', 'b', 'sad', 'gg', 'option2', '2020-03-20 15:46:12'),
('QS-543051', 'S1-317981', 'MC', 'jhgjhg', 'jgjh', 'bjbj', 'hgjh', 'g', 'option1', '2020-03-20 19:15:20'),
('QS-543052', 'S1-317981', 'MC', 'kjkhjhkjh', 'jkhjk ', 'kjh', 'jkh', 'h', 'option1', '2020-03-20 19:16:31'),
('QS-549265', 'S1-317981', 'MC', '4', 'ad', 'b', 'dfsf', 'hh', 'option2', '2020-03-20 19:06:10'),
('QS-551540', 'S2-552798', 'MC', 'jhjkh', 'jkhjkh', 'fyu', 'tuytuy', 'yut', 'option1', '2020-03-20 19:37:12'),
('QS-552015', 'S1-317981', 'MC', 'asdas3', 'qwe', 'ds', 'as', 'b', 'option4', '2020-03-20 19:05:57'),
('QS-574479', 'S2-552798', 'MC', 'ioojlk', 'ghghjg', 'jhg', 'jhg', 'hjg', 'option1', '2020-03-20 19:35:44'),
('QS-576112', 'S1-317981', 'MC', 'hjgjhgjhg', 'kjg', 'hk', 'jhk', 'h', 'option1', '2020-03-20 19:18:31'),
('QS-577070', 'S2-552798', 'MC', 'asdasda', 'sadsad', 'sadsada', 'b', 'aaa', 'option3', '2020-03-20 15:45:37'),
('QS-584994', 'S1-317981', 'MC', 'sadads', 'b', 'saddasd', 'gjh', 'hg', 'option1', '2020-03-20 19:08:58'),
('QS-585999', 'S2-552798', 'MC', 'jglupo', 'k', 'jkhjkh ', 'kjhjkhkjh', 'jhjkh', 'option1', '2020-03-20 19:36:31'),
('QS-610008', 'S1-317981', 'MC', 'jkh;lj', 'jkfdkj', 'fjhfjh', 'kj', 'jhf', 'option1', '2020-03-20 19:18:53'),
('QS-611345', 'S2-552798', 'MC', 'lkjlkj', 'ljlk', 'hfgh', 'fhg', 'fghf', 'option1', '2020-03-20 19:36:25'),
('QS-616647', 'S1-317981', 'MC', 'jgjhgjhg', ' jhj', ' sadas', 'kj', 'asda', 'option1', '2020-03-20 19:14:50'),
('QS-619088', 'S1-317981', 'MC', 'kjh', 'kjh', 'jkhjk', 'kh', 'kkk', 'option1', '2020-03-20 19:13:43'),
('QS-621863', 'S1-317981', 'MC', 'sadjslkjd', 'b', 'kh', 'jkh', 'hk', 'option1', '2020-03-20 19:11:55'),
('QS-624781', 'S1-317981', 'MC', 'kjgjg', 'jgiugi', 'hjkh', 'jkk', 'jhjk', 'option1', '2020-03-20 19:15:58'),
('QS-625452', 'S1-317981', 'MC', 'jgjhg', 'bjjhg', 'hkjh', 'jhg', 'kjhk', 'option1', '2020-03-20 19:13:53'),
('QS-627250', 'S1-317981', 'MC', 'ndsoajasd', 'b', 'kjsdakj', 'jhjk', 'h', 'option1', '2020-03-20 19:12:25'),
('QS-641870', 'S1-317981', 'MC', 'askdjhaskjd', 'b', 'kjhdaksjhd', 'khjsa', 'kjh', 'option1', '2020-03-20 19:11:48'),
('QS-643826', 'S2-552798', 'MC', 'ionnm', 'hkhkhkjn', 'jjhjk', 'jjg', 'jhghjghj', 'option1', '2020-03-20 19:35:22'),
('QS-651315', 'S2-552798', 'MC', 'kjkhjk', 'hjkh', 'khkl', 'lhjkhj', 'hjkhjkh', 'option1', '2020-03-20 19:32:48'),
('QS-651562', 'S2-552798', 'MC', 'hjjh', 'gjhghjghj', 'hjghjg', 'jhg', 'hjg', 'option1', '2020-03-20 19:33:34'),
('QS-657531', 'S1-317981', 'MC', 'hguguygu', 'jkbkjb', 'hjh', 'jkjkhkj', 'khkhk', 'option1', '2020-03-20 19:16:24'),
('QS-660557', 'S1-317981', 'MC', 'sdjlsaj', 'b', 'kdsahkjd', 'kjhdk', 'khkj', 'option1', '2020-03-20 19:11:11'),
('QS-665197', 'S2-552798', 'MC', 'hddgfdgf', 'd', 'hkj', 'hjk', 'h', 'option1', '2020-03-20 19:37:48'),
('QS-685570', 'S2-552798', 'MC', 'ugjg', 'hjgjhg', 'h', 'jkhkjhkj', 'jhjk', 'option1', '2020-03-20 19:34:34'),
('QS-687651', 'S1-317981', 'MC', 'jkshakjd', 'b', 'kldjsa', 'lk', 'j', 'option1', '2020-03-20 19:12:02'),
('QS-689023', 'S1-317981', 'MC', 'sasjkdhsajkd', 'b', 'sajkdha', 'kasld', 'lfaslk', 'option1', '2020-03-20 19:09:50'),
('QS-696324', 'S2-552798', 'MC', 'jkgjhg', 'hjgjhgjhg', 'gjh', 'ghj', 'g ', 'option1', '2020-03-20 19:35:27'),
('QS-708100', 'S2-552798', 'MC', 'pipoddfg', 'hgjg', 'gkj', 'gkj', 'gkjg', 'option1', '2020-03-20 19:35:50'),
('QS-713298', 'S1-317981', 'MC', ',mnhkj', 'jh', 'jkh', 'jkh', 'h', 'option1', '2020-03-20 19:14:13'),
('QS-725183', 'S1-317981', 'MC', 'jkhjkhjk', 'kjhjk', 'hkjh', 'kjh', 'kh', 'option1', '2020-03-20 19:14:19'),
('QS-725185', 'S1-317981', 'MC', 'jhf', 'jf', 'kj', 'gkj', 'jk', 'option1', '2020-03-20 19:19:04'),
('QS-727666', 'S1-317981', 'MC', 'jhgjhjhg', 'kj jgjg', 'kj', 'gkjk', 'gkjgjk', 'option1', '2020-03-20 19:17:50'),
('QS-732152', 'S2-552798', 'MC', 'nbcnbcnbui', 'm,n,n', 'kjjk', 'hkjh', 'kjh', 'option1', '2020-03-20 19:33:11'),
('QS-750357', 'S1-317981', 'MC', 'kjgjhg', 'jkghjg', 'hgjhgj', 'g', 'g', 'option1', '2020-03-20 19:15:26'),
('QS-751837', 'S2-552798', 'MC', 'jlkjl', 'kjlk', 'fh', 'dhg', 'dghfh', 'option1', '2020-03-20 19:36:05'),
('QS-772481', 'S1-317981', 'MC', 'ksjfaskl', 'b', 'hjksadhfjak', 'jkhjkh', 'jkh', 'option1', '2020-03-20 19:12:54'),
('QS-774328', 'S2-552798', 'MC', 'loipoipd', 'jhjk ', 'hkj', 'h jhk', 'k ', 'option1', '2020-03-20 19:37:54'),
('QS-775880', 'S2-552798', 'MC', 'kj', 'hkjhjk', 'jh', 'fuyoi', 'u', 'option1', '2020-03-20 19:37:23'),
('QS-784173', 'EX-020302', 'MC', 'sdasdasd', 'sadsad', 'sadasd', 'sadasdsda', 'sadasd', 'option4', '2020-03-20 16:48:16'),
('QS-787739', 'S2-552798', 'MC', 'kjhkjhjkhjk', 'hjkh', 'jkhjk', 'hjkhjk', 'hkj', 'option1', '2020-03-20 19:31:27'),
('QS-789323', 'S2-552798', 'MC', 'hghgjh', 'gjhgjhg', 'jh', 'hjg', 'jhg', 'option1', '2020-03-20 19:33:41'),
('QS-801081', 'S2-552798', 'MC', 'lhkhlk', 'hlkhlkh', 'gkj', 'gjhg', 'gjkg', 'option1', '2020-03-20 19:34:57'),
('QS-815594', 'S2-552798', 'MC', 'hghfgh', 'fhfghf', 'hjgjg', 'jgjh', 'gj', 'option1', '2020-03-20 19:33:59'),
('QS-837919', 'S1-317981', 'MC', 'kjkhkjh', ' hkk', 'kh', 'kj ', 'hkj', 'option1', '2020-03-20 19:16:38'),
('QS-838652', 'S1-317981', 'MC', 'jhghjgjhgh', 'khkjh', 'kjh k', 'nbjj', 'jjkhkh', 'option1', '2020-03-20 19:18:07'),
('QS-842419', 'S1-317981', 'MC', 'isahjhd', 'b', 'jkhjk', 'kjh', 'k', 'option1', '2020-03-20 19:12:37'),
('QS-845061', 'S1-317981', 'MC', '1', 'sadasdsad', 'b', 'asdsad', 'asa', 'option2', '2020-03-20 18:44:21'),
('QS-857487', 'S2-552798', 'MC', 'sadsadasd', 'weqfasfasd', 'asdas', 'b', 'sadasdad', 'option3', '2020-03-20 15:45:48'),
('QS-857638', 'S1-317981', 'MC', 'jgjgjh', 'jkgjh', 'hjg', 'hg', 'g', 'option1', '2020-03-20 19:14:40'),
('QS-866404', 'EX-020302', 'MC', 'umumumumumumumu', 'b', 'sdasadsa', 'asdsad', 'sadsad', 'option1', '2020-03-20 16:46:28'),
('QS-867303', 'S1-317981', 'MC', 'hjgg', 'hlkh', 'gjh', 'gjh', 'gjhg', 'option1', '2020-03-20 19:15:51'),
('QS-872273', 'S2-552798', 'MC', 'ghj', 'ghjgjhg ', 'gkjgkjk', 'hghj', 'jhgjhg', 'option1', '2020-03-20 19:33:23'),
('QS-876431', 'S2-552798', 'MC', 'jkhjkhjk', 'hkjh', 'jkhjkhkjh', 'kjhjjkhjkh', 'kjhkjh', 'option1', '2020-03-20 19:31:57'),
('QS-881011', 'S2-552798', 'MC', 'kg', 'jkgkgkk', 'kjg', 'jkgk', 'gkg', 'option1', '2020-03-20 19:33:15'),
('QS-881555', 'S2-552798', 'MC', 'jkkjhkjh', 'jkhjkljkl', 'hkj', 'hjk', 'hjk', 'option1', '2020-03-20 19:32:08'),
('QS-884560', 'S1-317981', 'MC', 'kjsadh', 'sadasjk', ' b', 'dajks', 'dsa,dl', 'option2', '2020-03-20 19:08:35'),
('QS-886364', 'S2-552798', 'MC', 'pooip', 'oipopou', 'g h', 'gfhg', ' h', 'option1', '2020-03-20 19:38:05'),
('QS-892478', 'S1-317981', 'MC', 'dsajkhdsajk', 'b', 'skjadkajd', 'khsak', ';jlsad', 'option1', '2020-03-20 19:11:05'),
('QS-935490', 'S1-317981', 'MC', 'kj', 'gjkgj', 'gjk', 'gkjgkj', 'lkhhlkl', 'option1', '2020-03-20 19:19:10'),
('QS-935830', 'S1-317981', 'MC', 'gjhhjghj', 'hjkhk', 'hkh', 'kh', 'k', 'option1', '2020-03-20 19:16:10'),
('QS-942161', 'S1-317981', 'MC', 'jkjkhkj', 'kjhkj', 'kjhkj', 'kh', 'kk', 'option1', '2020-03-20 19:13:17'),
('QS-961564', 'S2-552798', 'MC', 'kjkl', 'jkl', 'kj', 'l;liop', 'ipi', 'option1', '2020-03-20 19:37:42'),
('QS-978133', 'S2-552798', 'MC', 'bbjhf', 'jkhjkh', 'jkh', 'kjhjk', 'hjk', 'option1', '2020-03-20 19:33:30'),
('QS-981273', 'S2-552798', 'MC', 'dsada', 'khklhjk', 'gjhg', 'hjg', 'jhgjh', 'option1', '2020-03-20 19:38:23'),
('QS-981554', 'S2-552798', 'MC', ';lk;k', ';kfytr', 'ghj', 'gjg', 'hjg', 'option1', '2020-03-20 19:37:59'),
('QS-988772', 'S1-317981', 'MC', 'jh', 'gjh', 'jghhj', 'gjh', 'gjh', 'option1', '2020-03-20 19:18:58'),
('QS-990233', 'S2-552798', 'MC', 'gfghf', 'fhgfhg', 'jgjhgjh', ' jhgjh', 'gjh ', 'option1', '2020-03-20 19:34:05'),
('QS-995974', 'S1-317981', 'MC', 'oikhkhk', 'bjkbjkg', 'jkgkjg ', 'jkjkh', 'jkhkjh', 'option1', '2020-03-20 19:17:58'),
('QS-996115', 'S1-317981', 'MC', 'rwe5', ' asdasdasdadasd', 'sad', 'safasd', 'b', 'option4', '2020-03-20 19:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `subject_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `date_registered` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`subject_id`, `name`, `department`, `category`, `date_registered`, `status`) VALUES
('SB-561055', 'SIPENCATAR', 'Perguruan Tinggi', 'Sipencatar', '18-03-2020', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token`
--

CREATE TABLE `tbl_token` (
  `token` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_token`
--

INSERT INTO `tbl_token` (`token`, `status`) VALUES
('qwerty', '8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL DEFAULT '-',
  `category` varchar(255) NOT NULL DEFAULT '-',
  `login` varchar(255) NOT NULL DEFAULT 'e10adc3949ba59abbe56e057f20f883e',
  `role` varchar(255) NOT NULL DEFAULT 'student',
  `avatar` longblob,
  `acc_stat` varchar(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `first_name`, `last_name`, `gender`, `dob`, `address`, `email`, `phone`, `department`, `category`, `login`, `role`, `avatar`, `acc_stat`) VALUES
('admin', 'Admin', 'Admin', 'Male', '01/02/1995', '-', 'admin@si.com', '1', '-', '-', '171714bd530e84d9605ea5b407267177', 'admin', '', '1'),
('S168-849-810', 'Weqweqwe', 'Qweqwe', 'Male', '03/07/2020', 'Dadadasd', 'wqeqwe@asdad', '12312312', 'Perguruan Tinggi', 'Sipencatar', '21232f297a57a5a743894a0e4a801fc3', 'student', NULL, '1'),
('S268-599-334', 'Asdasd', 'Daasda', 'Male', '02/26/2020', '123213', 'ada@dad', '123123', 'Perguruan Tinggi', 'Sipencatar', '202cb962ac59075b964b07152d234b70', 'student', NULL, '1'),
('S788-008-082', 'Dasdas', 'Sadasd', 'Male', '02/29/2020', 'Dasdads', 'adasd@dads', '213123', 'Perguruan Tinggi', 'Sipencatar', '202cb962ac59075b964b07152d234b70', 'student', NULL, '1'),
('S997-096-459', 'Muh Fauzan', 'Bakri', 'Male', '02/23/2020', 'Dsadsadasd', 'mfzn@gmail.com', '099898', 'Perguruan Tinggi', 'Sipencatar', '202cb962ac59075b964b07152d234b70', 'student', NULL, '1'),
('tes', 'Fauzan', 'Muh', 'Male', '03/12/2020', 'BTP', 'mfzn.zoldyck@gmail.com', '082191948373', 'Perguruan Tinggi', 'Sipencatar', '202cb962ac59075b964b07152d234b70', 'student', '', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tbl_assessment_records`
--
ALTER TABLE `tbl_assessment_records`
  ADD PRIMARY KEY (`record_id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_departments`
--
ALTER TABLE `tbl_departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tbl_examinations`
--
ALTER TABLE `tbl_examinations`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notice_id` (`notice_id`);

--
-- Indexes for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `tbl_token`
--
ALTER TABLE `tbl_token`
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
