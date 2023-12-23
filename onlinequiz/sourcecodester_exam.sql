-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2021 at 11:39 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourcecodester_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71485b9'),
('5b141d71ddb46', '5b141d71978d1'),
('5b141d721a738', '5b141d71e5f48'),
('5b141d7260b7d', '5b141d7222820'),
('5b141d72a6fa1', '5b141d7268b95'),

('5b1422651fdde', '5b1422654ab3a'),
('5b14226574ed5', '5b1422657d05f'),
('5b142265b5d08','5b142265c09ff' ),
('5b1422661d93f', '5b14226635e04'),
('5b14226663cf4','5b1422666bf3e' ),
('5b1422669481b', '5b1422669c8dc'),
('5b142266c525c', '5b142266cd353'),
('5b14226711d91', '5b14226719fa0'),
('5b1422674286d',  '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3e9');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('suryaprasadtripathy8@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:56:00'),
('pinky@gmail.com', '5b141b8009cf0', 30, 10, 10, 0, '2018-06-03 16:57:45'),
('priyanka@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:59:06'),
('suryaprasadtripathy8@gmail.com', '5b141f1e8399e', 26, 10, 9, 1, '2018-06-03 17:17:26'),
('janobe@gmail.com', '5b141b8009cf0', 10, 10, 5, 5, '2021-02-23 11:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('5b141d712647f', 'her', '5b141d71485b9'),
('5b141d712647f', 'she', '5b141d71485dc'),
('5b141d712647f', 'they', '5b141d71485e0'),
('5b141d712647f', 'thy', '5b141d71485e4'),
('5b141d718f873', 'on', '5b141d71978be'),
('5b141d718f873', 'at', '5b141d71978cc'),
('5b141d718f873', 'in', '5b141d71978d1'),
('5b141d718f873', 'during', '5b141d71978d4'),
('5b141d71ddb46', 'to home', '5b141d71e5f2b'),
('5b141d71ddb46', 'at home', '5b141d71e5f3c'),
('5b141d71ddb46', 'by home', '5b141d71e5f43'),
('5b141d71ddb46', 'home', '5b141d71e5f48'),
('5b141d721a738', 'at', '5b141d7222820'),
('5b141d721a738', 'on', '5b141d722282f'),
('5b141d721a738', 'to', '5b141d7222880'),
('5b141d721a738', 'in', '5b141d7222884'),
('5b141d7260b7d', 'liking', '5b141d7268b8a'),
('5b141d7260b7d', 'enjoying', '5b141d7268b95'),
('5b141d7260b7d', 'hating', '5b141d7268b98'),
('5b141d7260b7d', 'Watching', '5b141d7268b9a'),

('5b1422651fdde', ' Äpfel', '5b1422654ab3a'),
('5b1422651fdde', 'Bananen', '5b1422654ab48'),
('5b1422651fdde', ' Orangen', '5b1422654ab4d'),
('5b1422651fdde', 'Erdbeeren', '5b1422654ab51'),
('5b14226574ed5', 'deine', '5b1422657d052'),
('5b14226574ed5', 'mein', '5b1422657d05f'),
('5b14226574ed5', 'ihr', '5b1422657d064'),
('5b14226574ed5', ' seine', '5b1422657d069'),
('5b142265b5d08', 'machst', '5b142265c09e3'),
('5b142265b5d08', ' tust', '5b142265c09f5'),
('5b142265b5d08', 'mache', '5b142265c09fa'),
('5b142265b5d08', 'hast', '5b142265c09ff'),
('5b1422661d93f', 'die', '5b14226635df5'),
('5b1422661d93f', 'der', '5b14226635e04'),
('5b1422661d93f', 'das', '5b14226635e09'),
('5b1422661d93f', 'den', '5b14226635e0d'),
('5b14226663cf4', 'zum', '5b1422666bf2b'),
('5b14226663cf4', ' zur', '5b1422666bf39'),
('5b14226663cf4', ' ins', '5b1422666bf3e'),
('5b14226663cf4', 'in der', '5b1422666bf42'),
('5b1422669481b', ' les pommes', '5b1422669c8dc'),
('5b1422669481b', 'les oranges', '5b1422669c8ea'),
('5b1422669481b', 'les bananes', '5b1422669c8ef'),
('5b1422669481b', 'les fraises', '5b1422669c8f3'),
('5b142266c525c', 'mon', '5b142266cd353'),
('5b142266c525c', ' ton', '5b142266cd361'),
('5b142266c525c', ' son', '5b142266cd365'),
('5b142266c525c', 'sa', '5b142266cd369'),
('5b14226711d91', 'as fait', '5b14226719fa0'),
('5b14226711d91', 'fais', '5b14226719fb1'),
('5b14226711d91', ' faisais', '5b14226719fb7'),
('5b14226711d91', 'feras', '5b14226719fbb'),
('5b1422674286d', ' le', '5b1422674a9ee'),
('5b1422674286d', ' l', '5b1422674aa01'),
('5b1422674286d', ' la', '5b1422674aa06'),
('5b1422674286d', 'les', '5b1422674aa0b'),
('5b1422677371f', ' au', '5b1422677b3e9'),
('5b1422677371f', ' à l', '5b1422677b3f7'),
('5b1422677371f', ' à la', '5b1422677b3fc'),
('5b1422677371f', ' aux', '5b1422677b400');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('5b141b8009cf0', '5b141d712647f', 'I spoke to _', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'Easter is _ March this year.', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'I go __ by bus.', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'He is arriving __ the station at 6.', 4, 4),
('5b141b8009cf0', '5b141d7260b7d', 'I am not __ this movie.', 4, 5),

('5b141f1e8399e', '5b1422651fdde', 'Ich mag ____.', 4, 1),
('5b141f1e8399e', '5b14226574ed5', 'Wo ist ____ Buch?', 4, 2),
('5b141f1e8399e', '5b142265b5d08', ' Was ____ du gestern gemacht?', 4, 3),
('5b141f1e8399e', '5b1422661d93f', 'Wann kommt ____ Zug an?', 4, 4),
('5b141f1e8399e', '5b14226663cf4', ' Wir gehen ____ Kino.', 4, 5),
('60377db362694', '5b1422669481b', 'Jaime ____.', 4, 1),
('60377db362694', '5b142266c525c', ' Où est ____ livre?', 4, 2),
('60377db362694', '5b14226711d91', 'Quest-ce que tu ____ hier', 4, 3),
('60377db362694', '5b1422674286d', ' Quand arrive ____ train?', 4, 4),
('60377db362694', '5b1422677371f', 'Nous allons ____ cinéma.', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'English', 3, 1, 5, '2018-06-03 16:46:56'),
('5b141f1e8399e', 'German', 3, 1, 5, '2018-06-03 17:02:22'),
('60377db362694', 'French', 3, 1, 5, '2021-02-25 10:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('pinky@gmail.com', 30, '2018-06-03 16:57:45'),
('priyanka@gmail.com', 22, '2018-06-03 16:59:06'),
('janobe@gmail.com', 10, '2021-02-23 11:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('janobe sourcecode', 'kcc', 'janobe@gmail.com', 'jan'),
('Swagatika Padhi', 'National Institute of Science and Technology, Berhampur', 'pinky@gmail.com', 'pinky'),
('Priyanka Pattnaik', 'National Institute of Science and Technology, Berhampur', 'priyanka@gmail.com', 'pinka');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
