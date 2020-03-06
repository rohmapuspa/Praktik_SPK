-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2019 at 03:06 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_alternatif`
--

CREATE TABLE `tab_alternatif` (
  `id_alternatif` varchar(10) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_alternatif`
--

INSERT INTO `tab_alternatif` (`id_alternatif`, `nama_alternatif`) VALUES
('1', 'RS Hardjolukito'),
('2', 'RS Pantirapih'),
('3', 'RS Bethesda'),
('4', 'RS Sardjito'),
('5', 'RSI Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `tab_kriteria`
--

CREATE TABLE `tab_kriteria` (
  `id_kriteria` varchar(10) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `Atribut` varchar(10) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_kriteria`
--

INSERT INTO `tab_kriteria` (`id_kriteria`, `nama_kriteria`, `Atribut`, `bobot`) VALUES
('1', 'Fasilitas', 'Benefit', 4),
('2', 'Kebersihan', 'Benefit', 2),
('3', 'Pelayanan', 'Benefit', 3),
('4', 'Ketersediaan Dokter', 'Benefit', 5),
('5', 'Keamanan', 'Benefit', 2),
('6', 'Ketersediaan Obat', 'Benefit', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tab_poin`
--

CREATE TABLE `tab_poin` (
  `id_poin` varchar(10) NOT NULL,
  `poin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_poin`
--

INSERT INTO `tab_poin` (`id_poin`, `poin`) VALUES
('1', '2'),
('2', '3'),
('3', '4'),
('4', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tab_topsis`
--

CREATE TABLE `tab_topsis` (
  `id_alternatif` varchar(10) NOT NULL,
  `id_kriteria` varchar(10) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_topsis`
--

INSERT INTO `tab_topsis` (`id_alternatif`, `id_kriteria`, `nilai`) VALUES
('1', '1', 3),
('1', '2', 2),
('1', '3', 3),
('1', '4', 2),
('1', '5', 4),
('1', '6', 3),
('2', '1', 4),
('2', '2', 5),
('2', '3', 4),
('2', '4', 3),
('2', '5', 5),
('2', '6', 4),
('3', '1', 4),
('3', '2', 3),
('3', '3', 3),
('3', '4', 4),
('3', '5', 3),
('3', '6', 2),
('4', '1', 5),
('4', '2', 5),
('4', '3', 4),
('4', '4', 5),
('4', '5', 5),
('4', '6', 3),
('5', '1', 3),
('5', '2', 3),
('5', '3', 3),
('5', '4', 2),
('5', '5', 3),
('5', '6', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_alternatif`
--
ALTER TABLE `tab_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `tab_kriteria`
--
ALTER TABLE `tab_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `tab_poin`
--
ALTER TABLE `tab_poin`
  ADD PRIMARY KEY (`id_poin`);

--
-- Indexes for table `tab_topsis`
--
ALTER TABLE `tab_topsis`
  ADD PRIMARY KEY (`id_alternatif`,`id_kriteria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
