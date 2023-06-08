-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 04, 2023 at 11:54 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grafana`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `obd_data`
--

CREATE TABLE `obd_data` (
  `speed_value` int(10) NOT NULL,
  `rpm_value` int(10) NOT NULL,
  `coolant_temp_value` float NOT NULL,
  `oil_temp_value` float NOT NULL,
  `fuel_status_value` float NOT NULL,
  `fuel_pressure_value` float NOT NULL,
  `fuel_type_value` varchar(10) NOT NULL,
  `date_value` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obd_data`
--

INSERT INTO `obd_data` (`speed_value`, `rpm_value`, `coolant_temp_value`, `oil_temp_value`, `fuel_status_value`, `fuel_pressure_value`, `fuel_type_value`, `date_value`) VALUES
(0, 800, 90, 90, 0.7, 140, 'Diesel', '2023-06-04 15:00:00'),
(0, 3500, 90, 90, 0.7, 142, 'Diesel', '2023-06-04 15:00:01'),
(15, 2500, 90.1, 90.1, 20, 143, 'Diesel', '2023-06-04 15:00:02'),
(30, 4000, 90.2, 90.1, 35, 141, 'Diesel', '2023-06-04 15:00:03'),
(41, 2800, 90.4, 90.1, 23, 142, 'Diesel', '2023-06-04 15:00:04'),
(52, 3559, 90.4, 90.1, 27, 144, 'Diesel', '2023-06-04 15:00:05'),
(64, 4000, 90.5, 90.1, 32.5, 141, 'Diesel', '2023-06-04 15:00:06'),
(77, 4400, 90.7, 90.2, 38, 144, 'Diesel', '2023-06-04 15:00:07'),
(85, 3000, 90.7, 90.2, 14, 140, 'Diesel', '2023-06-04 15:00:08'),
(92, 3750, 90.7, 90.2, 25, 142, 'Diesel', '2023-06-04 15:00:09'),
(100, 4000, 90.8, 90.2, 28, 143, 'Diesel', '2023-06-04 15:00:10'),
(102, 2110, 90.6, 90.3, 12, 140, 'Diesel', '2023-06-04 15:00:11'),
(100, 2100, 90.5, 90.4, 10.5, 140, 'Diesel', '2023-06-04 15:00:11'),
(101, 2100, 90.4, 90.4, 8, 140, 'Diesel', '2023-06-04 15:00:12'),
(101, 2105, 90.3, 90.4, 7.5, 140, 'Diesel', '2023-06-04 15:00:13'),
(100, 2100, 90.2, 90.3, 7, 140, 'Diesel', '2023-06-04 15:00:14'),
(104, 2115, 90.2, 90.3, 6.9, 140, 'Diesel', '2023-06-04 15:00:15'),
(102, 2110, 90.1, 90.3, 6.7, 140, 'Diesel', '2023-06-04 15:00:16'),
(101, 2109, 90, 90.2, 6.8, 140, 'Diesel', '2023-06-04 15:00:17'),
(100, 2100, 90, 90.2, 6.8, 140, 'Diesel', '2023-06-04 15:00:18'),
(100, 2100, 90, 90.2, 6.9, 140, 'Diesel', '2023-06-04 15:00:19'),
(100, 2100, 90, 90.2, 6.6, 140, 'Diesel', '2023-06-04 15:00:20'),
(105, 4000, 90.1, 90, 20.1, 140, 'Diesel', '2023-06-04 15:00:21'),
(110, 4400, 90.2, 90, 32.2, 141, 'Diesel', '2023-06-04 15:00:22'),
(110, 4400, 90.7, 90, 32.2, 142, 'Diesel', '2023-06-04 15:00:23'),
(110, 4400, 90.9, 90.3, 32.2, 143, 'Diesel', '2023-06-04 15:00:24'),
(110, 4400, 91.2, 90.3, 32.2, 144, 'Diesel', '2023-06-04 15:00:25'),
(110, 4400, 91.8, 90.4, 32.2, 146, 'Diesel', '2023-06-04 15:00:26'),
(110, 4400, 92.1, 90.8, 32.2, 145, 'Diesel', '2023-06-04 15:00:27'),
(110, 4400, 92.5, 90.9, 32.2, 145, 'Diesel', '2023-06-04 15:00:28'),
(110, 4400, 92.8, 91.2, 32.2, 144, 'Diesel', '2023-06-04 15:00:29'),
(110, 4400, 93, 91.5, 32.2, 145, 'Diesel', '2023-06-04 15:00:30');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
