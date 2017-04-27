-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2017 at 01:04 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `130`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `IDalbum` int(11) NOT NULL,
  `NomeAlbum` varchar(30) NOT NULL,
  `FotoAlbum` varchar(1000) NOT NULL,
  `AnnoAlbum` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `artista`
--

CREATE TABLE `artista` (
  `IDartista` int(11) NOT NULL,
  `Nomeartista` varchar(30) NOT NULL,
  `FotoArtista` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `canzonidatabasemadre`
--

CREATE TABLE `canzonidatabasemadre` (
  `IDcanzone` int(11) NOT NULL,
  `TitoloCanzone` varchar(30) NOT NULL,
  `Durata` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `utenti`
--

CREATE TABLE `utenti` (
  `ID` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Mail` varchar(30) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `utenti`
--

INSERT INTO `utenti` (`ID`, `Username`, `Mail`, `Password`) VALUES
(1, 'Francesco Bonso', 'francesco.bns@live.it', 'bagigi'),
(2, 'Stefano Sartori', 'sartoristefano@libero.it', '1234'),
(3, 'Bruno Valluzzi', 'brunovalluzzi@gmail.com', 'gerusalemme');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`IDalbum`);

--
-- Indexes for table `artista`
--
ALTER TABLE `artista`
  ADD PRIMARY KEY (`IDartista`);

--
-- Indexes for table `canzonidatabasemadre`
--
ALTER TABLE `canzonidatabasemadre`
  ADD PRIMARY KEY (`IDcanzone`);

--
-- Indexes for table `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `IDalbum` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `artista`
--
ALTER TABLE `artista`
  MODIFY `IDartista` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `canzonidatabasemadre`
--
ALTER TABLE `canzonidatabasemadre`
  MODIFY `IDcanzone` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `utenti`
--
ALTER TABLE `utenti`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
