-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2018 at 09:37 AM
-- Server version: 10.1.34-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

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
-- Table structure for table `alamat_order`
--

CREATE TABLE `alamat_order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kota_kab` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `alamat_user`
--

CREATE TABLE `alamat_user` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kota_kab` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('2018-10-06 15:16:50', '2018-10-06 15:16:50', 1, 0, 0, 25),
('2018-10-07 14:41:40', '2018-10-07 14:41:40', 2, 0, 0, 29),
('2018-10-30 07:43:37', '2018-10-30 07:43:37', 3, 0, 0, 35);

-- --------------------------------------------------------

--
-- Table structure for table `detail_order`
--

CREATE TABLE `detail_order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `ukuran` varchar(255) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` double DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembayaran`
--

CREATE TABLE `detail_pembayaran` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `no_rek` double DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `bukti_bayar_path` varchar(255) DEFAULT NULL,
  `bukti_bayar_filename` varchar(255) DEFAULT NULL,
  `bukti_bayar_filesize` double DEFAULT NULL,
  `waktu` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `detail_pengiriman`
--

CREATE TABLE `detail_pengiriman` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `via` double DEFAULT NULL,
  `resi` varchar(255) DEFAULT NULL,
  `hasil_path` varchar(255) DEFAULT NULL,
  `hasil_filename` varchar(255) DEFAULT NULL,
  `hasil_filesize` double DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_order`
--

CREATE TABLE `hasil_order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `jumlah_revisi` double DEFAULT NULL,
  `status_revisi` double DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_order`
--

CREATE TABLE `jenis_order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `jenis_order` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `harga` double DEFAULT NULL,
  `jumlah_revisi` double DEFAULT NULL,
  `lama_pengerjaan` double DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` double DEFAULT NULL,
  `kategori_karya_id` int(11) DEFAULT NULL,
  `desainer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Dumping data for table `kategori_karya`
--

INSERT INTO `kategori_karya` (`createdAt`, `updatedAt`, `id`, `kategori`, `path`, `filename`, `filesize`) VALUES
('2018-10-12 12:05:47', '2018-10-12 12:05:47', 1, 'Doodle Art', '/images/kategori_karya/', 'Doodle Art.png', 8309),
('2018-10-12 14:49:27', '2018-10-12 14:49:27', 2, 'Kaligrafi', '/images/kategori_karya/', 'Kaligrafi.png', 8612),
('2018-10-12 14:50:31', '2018-10-12 14:50:31', 3, 'Karikatur', '/images/kategori_karya/', 'Karikatur.png', 8364),
('2018-10-12 14:51:04', '2018-10-12 14:51:04', 4, 'Lettering', '/images/kategori_karya/', 'Lettering.png', 8676),
('2018-10-12 14:51:20', '2018-10-12 14:51:20', 5, 'Line Art', '/images/kategori_karya/', 'Line Art.png', 6610),
('2018-10-12 14:55:03', '2018-10-12 14:55:03', 6, 'Mozaik', '/images/kategori_karya/', 'Mozaik.png', 8060),
('2018-10-12 14:56:10', '2018-10-12 14:56:10', 7, 'Origin Karakter', '/images/kategori_karya/', 'Origin Karakter.png', 10215),
('2018-10-12 14:56:46', '2018-10-12 14:56:46', 8, 'Papercut', '/images/kategori_karya/', 'Papercut.png', 8567),
('2018-10-12 14:57:36', '2018-10-12 14:57:36', 9, 'Siluet', '/images/kategori_karya/', 'Siluet.png', 7824),
('2018-10-12 14:58:01', '2018-10-12 14:58:01', 10, 'Sketsa', '/images/kategori_karya/', 'Sketsa.png', 7318),
('2018-10-12 15:01:15', '2018-10-12 15:01:15', 11, 'Vector Art', '/images/kategori_karya/', 'Vector Art.png', 8527),
('2018-10-12 15:01:25', '2018-10-12 15:01:25', 12, 'Wpap', '/images/kategori_karya/', 'Wpap.png', 6096);

-- --------------------------------------------------------

--
-- Table structure for table `opsi_order`
--

CREATE TABLE `opsi_order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `opsi_order` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `tanggal_deadline` varchar(255) DEFAULT NULL,
  `tanggal_selesai` varchar(255) DEFAULT NULL,
  `status_bayar` double DEFAULT NULL,
  `status_diproses` double DEFAULT NULL,
  `status_selesai` double DEFAULT NULL,
  `status_dikirim` double DEFAULT NULL,
  `status_diterima` double DEFAULT NULL,
  `pelanggan_id` int(11) DEFAULT NULL,
  `desainer_id` int(11) DEFAULT NULL,
  `kategori_karya_id` int(11) DEFAULT NULL,
  `jenis_order_id` int(11) DEFAULT NULL,
  `opsi_order_id` int(11) DEFAULT NULL
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

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`createdAt`, `updatedAt`, `id`, `user_id`) VALUES
('2018-10-06 03:27:30', '2018-10-06 03:27:30', 1, 23),
('2018-10-07 09:19:01', '2018-10-07 09:19:01', 2, 27),
('2018-10-07 09:23:10', '2018-10-07 09:23:10', 3, 28),
('2018-10-07 23:11:03', '2018-10-07 23:11:03', 4, 30),
('2018-10-08 02:58:54', '2018-10-08 02:58:54', 5, 31),
('2018-10-08 02:59:59', '2018-10-08 02:59:59', 6, 32),
('2018-11-04 13:18:30', '2018-11-04 13:18:30', 7, 37);

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
-- Table structure for table `ukuran_karya`
--

CREATE TABLE `ukuran_karya` (
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `id` int(11) NOT NULL,
  `ukuran` varchar(255) DEFAULT NULL,
  `harga_bingkai` double DEFAULT NULL,
  `karya_id` int(11) DEFAULT NULL
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
-- Indexes for dumped tables
--

--
-- Indexes for table `alamat_order`
--
ALTER TABLE `alamat_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `alamat_user`
--
ALTER TABLE `alamat_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `detail_pembayaran`
--
ALTER TABLE `detail_pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `detail_pengiriman`
--
ALTER TABLE `detail_pengiriman`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `hasil_order`
--
ALTER TABLE `hasil_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `jenis_order`
--
ALTER TABLE `jenis_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

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
-- Indexes for table `opsi_order`
--
ALTER TABLE `opsi_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
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
-- Indexes for table `ukuran_karya`
--
ALTER TABLE `ukuran_karya`
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
-- AUTO_INCREMENT for table `alamat_order`
--
ALTER TABLE `alamat_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alamat_user`
--
ALTER TABLE `alamat_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `archive`
--
ALTER TABLE `archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `desainer`
--
ALTER TABLE `desainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detail_pembayaran`
--
ALTER TABLE `detail_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detail_pengiriman`
--
ALTER TABLE `detail_pengiriman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hasil_order`
--
ALTER TABLE `hasil_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jenis_order`
--
ALTER TABLE `jenis_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `karya`
--
ALTER TABLE `karya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kategori_karya`
--
ALTER TABLE `kategori_karya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `opsi_order`
--
ALTER TABLE `opsi_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
-- AUTO_INCREMENT for table `ukuran_karya`
--
ALTER TABLE `ukuran_karya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
