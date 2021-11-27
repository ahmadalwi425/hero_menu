-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 07:56 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_final_hero-menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahan`
--

CREATE TABLE `bahan` (
  `id` int(11) NOT NULL,
  `nama_bahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bahan`
--

INSERT INTO `bahan` (`id`, `nama_bahan`) VALUES
(1, 'garam'),
(2, 'telur'),
(3, 'merica'),
(4, 'gula'),
(5, 'tepung terigu'),
(6, 'susu'),
(7, 'bawang putih'),
(8, 'bawang merah'),
(9, 'minyak goreng'),
(10, 'nasi'),
(11, 'air');

-- --------------------------------------------------------

--
-- Table structure for table `bahan_masakan`
--

CREATE TABLE `bahan_masakan` (
  `id` int(11) NOT NULL,
  `id_masakan` int(11) NOT NULL,
  `id_bahan` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bahan_masakan`
--

INSERT INTO `bahan_masakan` (`id`, `id_masakan`, `id_bahan`, `keterangan`) VALUES
(1, 1, 10, ''),
(2, 1, 1, ''),
(3, 1, 9, ''),
(4, 1, 7, ''),
(5, 2, 10, '2 centong nasi');

-- --------------------------------------------------------

--
-- Table structure for table `masakan`
--

CREATE TABLE `masakan` (
  `id` int(11) NOT NULL,
  `nama_masakan` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masakan`
--

INSERT INTO `masakan` (`id`, `nama_masakan`, `deskripsi`, `gambar`) VALUES
(1, 'Nasi Goreng', 'Deskripsi Nasi Goreng Data 1', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Ffood.detik.com%2Fnasi%2Fd-5704111%2Fresep-nasi-goreng-sosis-yang-gurih-dan-nikmat&psig=AOvVaw3sqofBfxxMg6IFBPGd76hL&ust=1638045006596000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCOjFoLLvtvQCFQAAAAAdAAAAABAD'),
(2, 'Nasi Uduk', 'Deskripsi nasi uduk data 2', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fendeus.tv%2Fresep%2Fnasi-uduk-betawi&psig=AOvVaw3vTHfdWPIYNYs_Dswws8a3&ust=1638057629293000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPjZsLGet_QCFQAAAAAdAAAAABAD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bahan`
--
ALTER TABLE `bahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bahan_masakan`
--
ALTER TABLE `bahan_masakan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_masakan` (`id_masakan`),
  ADD KEY `id_bahan` (`id_bahan`);

--
-- Indexes for table `masakan`
--
ALTER TABLE `masakan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bahan`
--
ALTER TABLE `bahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bahan_masakan`
--
ALTER TABLE `bahan_masakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `masakan`
--
ALTER TABLE `masakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bahan_masakan`
--
ALTER TABLE `bahan_masakan`
  ADD CONSTRAINT `bahan_masakan_ibfk_1` FOREIGN KEY (`id_masakan`) REFERENCES `masakan` (`id`),
  ADD CONSTRAINT `bahan_masakan_ibfk_2` FOREIGN KEY (`id_bahan`) REFERENCES `bahan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
