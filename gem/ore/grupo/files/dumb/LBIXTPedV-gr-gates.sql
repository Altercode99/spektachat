-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 14, 2022 at 02:58 AM
-- Server version: 8.0.25
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kf_hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `id` int NOT NULL,
  `gate` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `gate_name` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `before_token` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gates`
--

INSERT INTO `gates` (`id`, `gate`, `gate_name`, `token`, `before_token`, `updated_at`) VALUES
(1, 'g1', 'Gate 1', '1644806760-g1', '1644806729-g1', '2022-02-14 07:31:24'),
(2, 'g2', 'Gate 2', '1644806759-g2', '1644806725-g2', '2022-02-14 07:31:24'),
(3, 'g3', 'Gate 3', '1644806759-g3', '1644806725-g3', '2022-02-14 07:31:47'),
(4, 'g4', 'Gate 4', '1644806755-g4', '1644806723-g4', '2022-02-14 07:31:47'),
(5, 'g5', 'Gate 5', '1644806731-g5', '1644806697-g5', '2022-02-14 07:32:06'),
(6, 'g6', 'Gate 6', '1644806760-g6', '1644806726-g6', '2022-02-14 07:32:06'),
(7, 'g7', 'Gate 7', '1644807523-g7', '1644807488-g7', '2022-02-14 07:32:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
