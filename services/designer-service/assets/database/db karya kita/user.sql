-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 30, 2018 at 02:18 PM
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
-- Table structure for table `user`
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--