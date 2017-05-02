-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2017 at 11:24 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serena`
--

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `ID` int(11) NOT NULL,
  `canzone` varchar(100) NOT NULL,
  `album` varchar(100) NOT NULL,
  `artista` varchar(100) NOT NULL,
  `fotoalbum` varchar(1000) NOT NULL,
  `fotoartista` varchar(1000) NOT NULL,
  `durata` varchar(5) NOT NULL,
  `anno` int(11) NOT NULL,
  `link_youtube` varchar(10000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`ID`, `canzone`, `album`, `artista`, `fotoalbum`, `fotoartista`, `durata`, `anno`, `link_youtube`) VALUES
(1, 'Otherside', 'Californication', 'Red Hot Chili Peppers', '\\fotoartisti\\californication.jpg', '\\fotoartisti\\red-hot-chili-peppers.jpg', '4:15', 1999, 'https://www.youtube.com/watch?v=rn_YodiJO6k'),
(2, 'Californication', 'Californication', 'Red Hot Chili Peppers', '\\fotoalbum\\Californication.jpg', '\\fotoartisti\\red-hot-chili-peppers.jpg', '5:22', 1999, 'https://www.youtube.com/watch?v=YlUKcNNmywk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `song`
--
ALTER TABLE `song`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `song`
--
ALTER TABLE `song`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
