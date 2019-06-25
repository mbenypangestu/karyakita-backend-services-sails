-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 06, 2018 at 08:38 PM
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

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`createdAt`, `updatedAt`, `id`, `user_id`) VALUES
('2018-10-06 03:27:30', '2018-10-06 03:27:30', 1, 23);

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`createdAt`, `updatedAt`, `id`, `email`, `username`, `password`, `nama`, `notelp`, `role_id`) VALUES
('2018-10-02 23:59:51', '2018-10-02 23:59:51', 1, 'desainer1@karyakita.com', 'desainer1', '$2b$10$NPnQX5ZWie1to1DGuuLY6eMCZZWUPjWXz.LvEW9r4g1HCuB37TygS', 'Asmi', '1231231231', 2),
('2018-10-03 19:34:09', '2018-10-03 19:34:09', 22, 'reza@gmail.com', 'apr', '$2b$10$0n5HnRKdJot7gHF46HI0GeY8z4oVsJHDiWHpL7BKpfCwihdw6bgK6', 'reza', '', 3),
('2018-10-06 03:27:30', '2018-10-06 03:27:30', 23, 'fatin@gmail.com', 'fatin', '$2b$10$ZnGfTdcmJZY1FR8pFfGmNu/0XNZIxN0DYWa5ZakwQwA6xjN0ExyFK', 'fatin', '', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
