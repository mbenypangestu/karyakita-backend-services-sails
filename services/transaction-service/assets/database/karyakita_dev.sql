-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 03, 2018 at 06:38 PM
-- Server version: 10.1.34-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.0.31-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyakita_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive`
--

CREATE TABLE `archive` (
  `id` int(11) NOT NULL,
  `createdAt` bigint(20) DEFAULT NULL,
  `fromModel` varchar(255) DEFAULT NULL,
  `originalRecord` longtext,
  `originalRecordId` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `desainer`
--

CREATE TABLE `desainer` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `rating` double DEFAULT NULL,
  `subscriber` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desainer`
--

INSERT INTO `desainer` (`createdAt`, `updatedAt`, `id`, `rating`, `subscriber`, `user_id`) VALUES
('2018-10-03 10:43:06', '2018-10-03 10:43:06', 1, 0, 0, 10),
('2018-10-03 10:43:32', '2018-10-03 10:43:32', 2, 0, 0, 11);

-- --------------------------------------------------------

--
-- Table structure for table `karya`
--

CREATE TABLE `karya` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `jumlah_revisi` double DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` double DEFAULT NULL,
  `kategori_karya_id` int(11) DEFAULT NULL,
  `desainer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karya`
--

INSERT INTO `karya` (`createdAt`, `updatedAt`, `id`, `nama`, `deskripsi`, `jumlah_revisi`, `path`, `filename`, `filesize`, `kategori_karya_id`, `desainer_id`) VALUES
('2018-10-02 20:19:48', '2018-10-02 20:19:48', 1, 'JJJSSS', 'Test desc', 5, '/assets/images/karya/', 'panel_001.png', 23393, 1, 2),
('2018-10-03 03:22:12', '2018-10-03 03:22:12', 2, 'JJJSSS', 'Test desc', 5, '/assets/images/karya/', 'JJJSSS_Wed Oct 03 2018 17:22:12 GMT+0700 (WIB).png', 23393, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_karya`
--

CREATE TABLE `kategori_karya` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `notelp` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`createdAt`, `updatedAt`, `id`, `email`, `username`, `password`, `nama`, `notelp`, `role_id`) VALUES
('2018-10-01 16:12:07', '2018-10-01 16:12:07', 1, 'admin1@karyakita.com', 'admin1', '$2b$10$9xri56OF.pFvCfUsE3yYTOqUFi3KsCSFuZFO3plAcRrpY3OcJROIW', 'Asmi', '1231231231', 1),
('2018-10-01 23:14:11', '2018-10-01 23:14:11', 3, 'admin2@karyakita.com', 'admin2', '$2b$10$GdQDPVVdvmZsaBma7EkViujpAhQ7U.2XFS.c68XWmEWccwat2957e', 'Asmi', '1231231231', 1),
('2018-10-02 06:15:47', '2018-10-02 06:15:47', 5, 'admin3@karyakita.com', 'admin3', '$2b$10$dTwN4.w73mZK12351iCPyOq3hkCAKEgN36ztkefTsm2M9zUtjnUlG', 'Asmi', '1231231231', 1),
('2018-10-02 13:16:26', '2018-10-02 13:16:26', 7, 'admin4@karyakita.com', 'admin4', '$2b$10$dwUXqARPnj9UyhihHKnPH.77f5mzRLFApUAz.qIk3i5gggfmb6IJ6', 'Asmi', '1231231231', 1),
('2018-10-02 20:17:53', '2018-10-02 20:17:53', 9, 'admin5@karyakita.com', 'admin5', '$2b$10$pBgJDMYPWr8sLJ/fhHHIEe3fMEXdGCnIPoq22oXZNuqqPmwCr9B4O', 'Asmi', '1231231231', 1),
('2018-10-03 10:43:06', '2018-10-03 10:43:06', 10, 'desainer5@karyakita.com', 'desainer5', '$2b$10$v0aEXA6ZmSvbUKeuGAoD5easlOInSQ6I2liv37UQOb/94zAQ3OFfu', 'Asmi', '1231231231', 2),
('2018-10-03 10:43:31', '2018-10-03 10:43:31', 11, 'desainer1@karyakita.com', 'desainer1', '$2b$10$SOzBfKH.OoL8QVu6XjIvTudeFiA6fla4kV6iW5eEq6BTopYDWDc.y', 'Asmi', '1231231231', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `desainer`
--
ALTER TABLE `desainer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `karya`
--
ALTER TABLE `karya`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `kategori_karya`
--
ALTER TABLE `kategori_karya`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive`
--
ALTER TABLE `archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `desainer`
--
ALTER TABLE `desainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `karya`
--
ALTER TABLE `karya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kategori_karya`
--
ALTER TABLE `kategori_karya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
