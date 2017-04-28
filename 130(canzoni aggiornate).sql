-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2017 at 05:00 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

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

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`IDalbum`, `NomeAlbum`, `FotoAlbum`, `AnnoAlbum`) VALUES
(1, 'Fabri Fibra - Fenomeno', '5845bce15420bcef45502ea01a76fbde.960x960x1.jpg', 2017);

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
  `TitoloCanzone` varchar(100) NOT NULL,
  `Durata` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canzonidatabasemadre`
--

INSERT INTO `canzonidatabasemadre` (`IDcanzone`, `TitoloCanzone`, `Durata`) VALUES
(1, '01 Intro.m4a', 2.05),
(2, '02 Red carpet.m4a', 3.35),
(3, '03 Fenomeno.m4a', 3.19),
(4, '04 Skit - Il tempo vola.m4a', 0.59),
(5, '05 Money for dope 2017.m4a', 4.21),
(6, '06 Pamplona (feat. Thegiornalisti).m4a', 3.44),
(7, '07 Equilibrio.m4a', 4.16),
(8, '08 Skit - Considerazioni (feat. Roberto Saviano).m4a', 1.38),
(9, '09 Cronico.m4a', 3.37),
(10, '10 Stavo pensando a te.m4a', 4.24),
(11, '11 Lascia stare.m4a', 3.15),
(12, '12 Dipinto di blu (feat. Lai?êoung).m4a', 3.18),
(13, '13 Dipinto di blu (feat. Laïoung).m4a', 3.18),
(14, '14 Invece no.m4a', 4.03),
(15, '15 Ogni giorno.m4a', 5.11),
(16, '16 Le vacanze.m4a', 4.44),
(17, '17 Nessun aiuto.m4a', 4.36),
(18, '18 Ringrazio.m4a', 4.51);

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
  MODIFY `IDalbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `artista`
--
ALTER TABLE `artista`
  MODIFY `IDartista` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `canzonidatabasemadre`
--
ALTER TABLE `canzonidatabasemadre`
  MODIFY `IDcanzone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `utenti`
--
ALTER TABLE `utenti`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
