-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2018 at 09:25 AM
-- Server version: 5.7.24-0ubuntu0.18.04.1
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

--
-- Dumping data for table `desainer`
--

INSERT INTO `desainer` (`createdAt`, `updatedAt`, `id`, `rating`, `subscriber`, `user_id`) VALUES
('2018-10-06 15:16:50', '2018-10-06 15:16:50', 1, 0, 0, 25),
('2018-10-07 14:41:40', '2018-10-07 14:41:40', 2, 0, 0, 29),
('2018-10-30 07:43:37', '2018-10-30 07:43:37', 3, 0, 0, 35);

--
-- Dumping data for table `jenis_order`
--

INSERT INTO `jenis_order` (`createdAt`, `updatedAt`, `id`, `jenis_order`) VALUES
(NULL, NULL, 1, 'Langsung'),
(NULL, NULL, 2, 'Custom');

--
-- Dumping data for table `karya`
--

INSERT INTO `karya` (`createdAt`, `updatedAt`, `id`, `nama`, `deskripsi`, `harga`, `jumlah_revisi`, `lama_pengerjaan`, `path`, `filename`, `filesize`, `kategori_karya_id`, `desainer_id`) VALUES
('2018-10-07 15:08:37', '2018-10-07 15:08:37', 1, 'The Dancing Woman', 'Doodle Art gambar seorang wanita yang sedang menari', 20000, 3, NULL, '/images/karya/', 'The Dancing Woman_Sun Oct 07 2018 15:08:37 GMT+0000 (UTC).png', 111947, 1, NULL),
('2018-10-07 15:11:52', '2018-10-07 15:11:52', 3, 'The Owl', 'Doodle Art gambar seekor burung hantu ', 20000, 3, NULL, '/images/karya/', 'The Owl_Sun Oct 07 2018 15:11:51 GMT+0000 (UTC).png', 122556, 1, NULL),
('2018-10-07 15:18:15', '2018-10-07 15:18:15', 4, 'Houses', 'Doodle Art gambar bangunan-bangunan rumah', 20000, 3, NULL, '/images/karya/', 'Houses_Sun Oct 07 2018 15:18:14 GMT+0000 (UTC).png', 121054, 1, NULL),
('2018-10-07 15:21:12', '2018-10-07 15:21:12', 5, 'Al-Ikhlas', 'Kaligrafi dari surah Al-Ikhlas', 20000, 3, NULL, '/images/karya/', 'Al-Ikhlas_Sun Oct 07 2018 15:21:11 GMT+0000 (UTC).png', 84477, 2, NULL),
('2018-10-07 15:22:21', '2018-10-07 15:22:21', 6, ' Asmaul Husna', 'Kaligrafi dari  Asmaul Husna', 20000, 3, NULL, '/images/karya/', ' Asmaul Husna_Sun Oct 07 2018 15:22:19 GMT+0000 (UTC).png', 143118, 2, NULL),
('2018-10-07 15:23:58', '2018-10-07 15:23:58', 7, 'Al-Qadr', 'Kaligrafi dari surah Al-Qadr', 20000, 3, NULL, '/images/karya/', 'Al-Qadr_Sun Oct 07 2018 15:23:56 GMT+0000 (UTC).png', 95060, 2, NULL),
('2018-10-07 15:37:04', '2018-10-07 15:37:04', 8, 'Mohammad Ali', 'Karikatur dari sosok petinju Mohammad Ali ', 20000, 3, NULL, '/images/karya/', 'Mohammad Ali_Sun Oct 07 2018 15:37:03 GMT+0000 (UTC).png', 68882, 3, NULL),
('2018-10-07 15:37:40', '2018-10-07 15:37:40', 9, 'Mr. Bean', 'Karikatur dari sosok Rowan Atkinson', 20000, 3, NULL, '/images/karya/', 'Mr. Bean_Sun Oct 07 2018 15:37:40 GMT+0000 (UTC).png', 26572, 1, 3),
('2018-10-07 15:41:01', '2018-10-07 15:41:01', 10, 'Jackie Chan', 'Karikatur dari sosok Jackie Chan', 20000, 3, NULL, '/images/karya/', 'Jackie Chan_Sun Oct 07 2018 15:41:01 GMT+0000 (UTC).png', 14525, 3, NULL),
('2018-10-07 15:44:47', '2018-10-07 15:44:47', 11, 'Thank You', 'Lettering \"Thank You\"', 20000, 3, NULL, '/images/karya/', 'Thank You_Sun Oct 07 2018 15:44:47 GMT+0000 (UTC).png', 31165, 4, NULL),
('2018-10-07 15:45:21', '2018-10-07 15:45:21', 12, 'Motivation', 'Lettering Motivation', 20000, 0, NULL, '', 'Motivation_Sun Oct 07 2018 15:45:20 GMT+0000 (UTC).png', 91659, 4, NULL),
('2018-10-07 15:45:49', '2018-10-07 15:45:49', 13, 'Quotes', 'Lettering Quotes', 20000, 3, NULL, '/images/karya/', 'Quotes_Sun Oct 07 2018 15:45:49 GMT+0000 (UTC).png', 124269, 1, 4),
('2018-10-07 15:49:03', '2018-10-07 15:49:03', 15, 'The Girl', 'Line art seorang gadis', 20000, 3, NULL, '/images/karya/', 'The Girl_Sun Oct 07 2018 15:49:03 GMT+0000 (UTC).png', 38136, 5, NULL),
('2018-10-07 15:50:01', '2018-10-07 15:50:01', 16, 'That Girl', 'Line art seorang gadis', 20000, 3, NULL, '/images/karya/', 'That Girl_Sun Oct 07 2018 15:50:01 GMT+0000 (UTC).png', 45898, 5, NULL),
('2018-10-07 15:50:23', '2018-10-07 15:50:23', 17, 'That Man', 'Line art seorang pria', 20000, 3, NULL, '/images/karya/', 'That Man_Sun Oct 07 2018 15:50:23 GMT+0000 (UTC).png', 40851, 5, NULL),
('2018-10-07 15:51:53', '2018-10-07 15:51:53', 18, 'Blue Woman', 'Mozaik seorang wanita', 20000, 3, NULL, '/images/karya/', 'Blue Woman_Sun Oct 07 2018 15:51:52 GMT+0000 (UTC).png', 109909, 6, NULL),
('2018-10-07 15:54:46', '2018-10-07 15:54:46', 19, 'A Couple', 'Mozaik sepasang burung', 20000, 3, NULL, '/images/karya/', 'A Couple_Sun Oct 07 2018 15:54:45 GMT+0000 (UTC).png', 123506, 9, NULL),
('2018-10-07 15:56:33', '2018-10-07 15:56:33', 20, 'Venice', 'Mozaik sungai Venesia di Itali', 20000, 3, NULL, '/images/karya/', 'Venice_Sun Oct 07 2018 15:56:32 GMT+0000 (UTC).png', 127884, 6, NULL),
('2018-10-07 15:59:41', '2018-10-07 15:59:41', 21, 'Centaur', 'Original karakter manusia kuda', 20000, 3, NULL, '/images/karya/', 'Centaur_Sun Oct 07 2018 15:59:41 GMT+0000 (UTC).png', 91540, 7, NULL),
('2018-10-07 16:01:56', '2018-10-07 16:01:56', 22, 'Archer', 'Original karakter gadis pemanah', 20000, 3, NULL, '/images/karya/', 'Archer_Sun Oct 07 2018 16:01:55 GMT+0000 (UTC).png', 74396, 7, NULL),
('2018-10-07 16:04:09', '2018-10-07 16:04:09', 23, 'Archer Man', 'Original karakter pria pemanah', 20000, 3, NULL, '/images/karya/', 'Archer Man_Sun Oct 07 2018 16:04:08 GMT+0000 (UTC).png', 59933, 7, NULL),
('2018-10-07 16:05:34', '2018-10-07 16:05:34', 24, 'The Forest', 'Paper cut hutan', 20000, 3, NULL, '/images/karya/', 'The Forest_Sun Oct 07 2018 16:05:33 GMT+0000 (UTC).png', 31867, 8, NULL),
('2018-10-07 16:06:39', '2018-10-07 16:06:39', 25, 'My Baby', 'Paper cut bayi dan kasih sayang orangtua', 20000, 3, NULL, '/images/karya/', 'My Baby_Sun Oct 07 2018 16:06:38 GMT+0000 (UTC).png', 41341, 8, NULL),
('2018-10-07 16:07:22', '2018-10-07 16:07:22', 26, 'Quotes', 'Paper cut kalimat quotes', 20000, 3, NULL, '/images/karya/', 'Quotes_Sun Oct 07 2018 16:07:20 GMT+0000 (UTC).png', 145218, 8, NULL),
('2018-10-07 16:09:09', '2018-10-07 16:09:09', 27, 'Umbrella Girl', 'Siluet gadis berpayung', 20000, 3, NULL, '/images/karya/', 'Umbrella Girl_Sun Oct 07 2018 16:09:09 GMT+0000 (UTC).png', 17287, 9, NULL),
('2018-10-07 16:10:27', '2018-10-07 16:10:27', 28, 'Umbrella Girl and The Dog', 'Siluet gadis berpayung dan anjingnya', 20000, 3, NULL, '/images/karya/', 'Umbrella Girl and The Dog_Sun Oct 07 2018 16:10:27 GMT+0000 (UTC).png', 50885, NULL, NULL),
('2018-10-07 16:11:00', '2018-10-07 16:11:00', 29, 'Umbrella Girl and Rainy Day', 'Siluet gadis berpayung ditengah hujan', 20000, 3, NULL, '/images/karya/', 'Umbrella Girl and Rainy Day_Sun Oct 07 2018 16:11:00 GMT+0000 (UTC).png', 50885, NULL, NULL),
('2018-10-07 16:13:00', '2018-10-07 16:13:00', 30, 'Pretty', 'Sketsa gadis cantik', 20000, 3, NULL, '/images/karya/', 'Pretty_Sun Oct 07 2018 16:12:59 GMT+0000 (UTC).png', 67044, NULL, NULL),
('2018-10-07 16:13:50', '2018-10-07 16:13:50', 31, 'Fashion', 'Sketsa fashion terkini', 20000, 3, NULL, '/images/karya/', 'Fashion_Sun Oct 07 2018 16:13:50 GMT+0000 (UTC).png', 80629, NULL, NULL),
('2018-10-07 16:15:05', '2018-10-07 16:15:05', 32, 'Gorgeous', 'Sketsa wanita cantik', 20000, 3, NULL, '/images/karya/', 'Gorgeous_Sun Oct 07 2018 16:15:05 GMT+0000 (UTC).png', 68559, NULL, NULL),
('2018-10-07 16:17:01', '2018-10-07 16:17:01', 33, 'Johny Depp', 'Vector art johny depp', 20000, 3, NULL, '/images/karya/', 'Johny Depp_Sun Oct 07 2018 16:17:01 GMT+0000 (UTC).png', 24380, NULL, NULL),
('2018-10-07 16:18:03', '2018-10-07 16:18:03', 34, 'Leonardo Dicaprio', 'Vector art leonardo dicaprio', 20000, 3, NULL, '/images/karya/', 'Leonardo Dicaprio_Sun Oct 07 2018 16:18:03 GMT+0000 (UTC).png', 81372, NULL, NULL),
('2018-10-07 16:20:34', '2018-10-07 16:20:34', 35, 'Sad Girl', 'Vector art gadis yang bersedih', 20000, 3, NULL, '/images/karya/', 'Sad Girl_Sun Oct 07 2018 16:20:34 GMT+0000 (UTC).png', 43822, NULL, NULL),
('2018-10-07 16:21:52', '2018-10-07 16:21:52', 36, 'David Beckham', 'WPAP david beckham', 20000, 3, NULL, '/images/karya/', 'David Beckham_Sun Oct 07 2018 16:21:50 GMT+0000 (UTC).png', 33076, NULL, NULL),
('2018-10-07 16:22:37', '2018-10-07 16:22:37', 37, 'Harry Potter', 'WPAP harry potter', 20000, 3, NULL, '/images/karya/', 'Harry Potter_Sun Oct 07 2018 16:22:37 GMT+0000 (UTC).png', 77159, 12, 1),
('2018-10-07 16:26:38', '2018-10-07 16:26:38', 38, 'Mesut Ozil', 'WPAP mesut ozil', 20000, 3, NULL, '/images/karya/', 'Mesut Ozil_Sun Oct 07 2018 16:26:37 GMT+0000 (UTC).png', 79321, NULL, NULL),
('2018-10-11 10:16:29', '2018-10-11 10:16:29', 39, 'Mesut ozila', 'pemain bola joss', 20000, 3, NULL, '/assets/images/karya/', 'Mesut ozila_Thu Oct 11 2018 10:16:29 GMT+0000 (UTC).png', 29317, NULL, NULL),
('2018-10-22 02:33:35', '2018-10-22 02:33:35', 40, 'Mesut ', 'pemain ', 20000, 3, NULL, '/images/karya/', 'Mesut _Mon Oct 22 2018 02:33:35 GMT+0000 (UTC).png', 25854, NULL, NULL),
('2018-10-23 13:40:02', '2018-10-23 13:40:02', 41, 'Mesut ozila', 'pemain bola joss', 20000, 3, NULL, '/images/karya/', 'Mesut ozila_Tue Oct 23 2018 13:40:02 GMT+0000 (UTC).png', 23393, NULL, NULL),
('2018-10-23 13:51:30', '2018-10-23 13:51:30', 42, 'Mesut ozila', 'pemain bola joss', 20000, 3, NULL, '/images/karya/', 'Mesut ozila_Tue Oct 23 2018 13:51:30 GMT+0000 (UTC).png', 23393, 1, 2);

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

--
-- Dumping data for table `opsi_order`
--

INSERT INTO `opsi_order` (`createdAt`, `updatedAt`, `id`, `opsi_order`) VALUES
(NULL, NULL, 1, 'Bingkai'),
(NULL, NULL, 2, 'Tanpa Bingkai');

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`createdAt`, `updatedAt`, `id`, `catatan`, `total`, `tanggal_deadline`, `tanggal_selesai`, `status_bayar`, `status_diproses`, `status_selesai`, `status_dikirim`, `status_diterima`, `pelanggan_id`, `desainer_id`, `kategori_karya_id`, `jenis_order_id`, `opsi_order_id`) VALUES
(NULL, NULL, 1, NULL, 70000, '2018-12-06 00:00:00', '2018-11-29 00:00:00', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1);

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`createdAt`, `updatedAt`, `id`, `user_id`) VALUES
('2018-10-06 03:27:30', '2018-10-06 03:27:30', 1, 23),
('2018-10-07 09:19:01', '2018-10-07 09:19:01', 2, 27),
('2018-10-07 09:23:10', '2018-10-07 09:23:10', 3, 28),
('2018-10-07 23:11:03', '2018-10-07 23:11:03', 4, 30),
('2018-10-08 02:58:54', '2018-10-08 02:58:54', 5, 31),
('2018-10-08 02:59:59', '2018-10-08 02:59:59', 6, 32);

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`createdAt`, `updatedAt`, `id`, `email`, `username`, `password`, `nama`, `notelp`, `role_id`) VALUES
('2018-10-02 23:59:51', '2018-10-02 23:59:51', 1, 'desainer1@karyakita.com', 'desainer1', '$2b$10$NPnQX5ZWie1to1DGuuLY6eMCZZWUPjWXz.LvEW9r4g1HCuB37TygS', 'Asmi', '1231231231', 2),
('2018-10-03 19:34:09', '2018-10-03 19:34:09', 22, 'reza@gmail.com', 'apr', '$2b$10$0n5HnRKdJot7gHF46HI0GeY8z4oVsJHDiWHpL7BKpfCwihdw6bgK6', 'reza', '', 3),
('2018-10-06 03:27:30', '2018-10-06 03:27:30', 23, 'fatin@gmail.com', 'fatin', '$2b$10$ZnGfTdcmJZY1FR8pFfGmNu/0XNZIxN0DYWa5ZakwQwA6xjN0ExyFK', 'fatin', '', 3),
('2018-10-06 15:16:50', '2018-10-06 15:16:50', 25, 'desainer2@karyakita.com', 'desainer2', '$2b$10$yebzU/DHnqE3Frgun1rLOe5bNtbZt.oavTcKeYuA8SwmNepbdtMpu', 'Asmi', '1231231231', 2),
('2018-10-07 09:19:01', '2018-10-07 09:19:01', 27, 'alifakbar111@gmail.com', 'alifakbar111', '$2b$10$y3Cy2OEDt4tq0tlloNQdFupZ4XRlCiJGwqIi5DYny0AgQA5Wyc5ri', 'alif akbar', '', 3),
('2018-10-07 09:23:10', '2018-10-07 09:23:10', 28, 'sheilaazizah11@gmail.com', 'sheilaazizh', '$2b$10$ZW9Hjtd3N4B/6NfcI0JZDu9fM8xvSCfMErVXw64ejgiQWlOdpC4TO', 'sheila azizah', '', 3),
('2018-10-07 14:41:40', '2018-10-07 14:41:40', 29, 'desainer3@karyakita.com', 'desainer3', '$2b$10$hLcFNTIZsD3alxI.kJ4d.eMqtFqaibkI8/XMVuyyFg55lvS8Lnx9K', 'Asmi', '1231231231', 2),
('2018-10-07 23:11:03', '2018-10-07 23:11:03', 30, 'fatinf@gmail.com', 'fatinn', '$2b$10$8pLX03g3r5rIfSWBEyF1ZufKdX5kjZbEKiLX3XGNgcd8nub9.bWVm', 'fatinn', '', 3),
('2018-10-08 02:58:54', '2018-10-08 02:58:54', 31, 'fad@gmail.com', 'fad', '$2b$10$GXtXMXVZbPmpbpgBtt9Jm.z3A1fv4jREQzMPAIQo87o5IeDBH87ku', 'fad', '', 3),
('2018-10-08 02:59:59', '2018-10-08 02:59:59', 32, 'alif111@gmail.com', 'alif111', '$2b$10$hwhRnIFFY2CbN5efC1U2lOHeIc0NJmiZGVE.63wj0wHRZvq2Muuti', 'alif akbar', '', 3),
('2018-10-30 07:43:37', '2018-10-30 07:43:37', 35, 'rezaprillia@gmail.com', 'reza', '$2b$10$4BgQEkQJ4haciKdBVWtzuO8nzg2MlVPlHgZKVKVl.93nOE0Lt9cnS', 'Reza Aprillia Arshanty', '082233819293', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
