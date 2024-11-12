-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2024 at 08:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vjezba15`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`) VALUES
(1, 'Josip', 'Salopek'),
(2, 'Marko', 'Maric'),
(3, 'Ivana', 'Kovacevic'),
(4, 'Petra', 'Lukic'),
(5, 'Ivan', 'Horvat'),
(6, 'Ana', 'Juric'),
(7, 'Marija', 'Pavlovic'),
(8, 'Tomislav', 'Babic'),
(9, 'Martina', 'Knezevic'),
(10, 'Karlo', 'Petrovic'),
(11, 'Josip', 'Novak'),
(12, 'Maja', 'Radic'),
(13, 'Nikola', 'Peric'),
(14, 'Marko', 'Bozic'),
(15, 'Lucija', 'Medved'),
(16, 'Filip', 'Lovric'),
(17, 'Antonia', 'Pavic'),
(18, 'Stjepan', 'Matic'),
(19, 'Lea', 'Simic'),
(20, 'Marko', 'Jurcevic'),
(21, 'Tihana', 'Vrban'),
(22, 'Nikola', 'Vukovic');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
