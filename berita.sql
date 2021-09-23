-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2021 at 08:01 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id` int(11) NOT NULL,
  `link_foto` varchar(255) NOT NULL,
  `link_berita` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `paragraf_pertama` varchar(1000) NOT NULL,
  `tanggal_publish` date NOT NULL DEFAULT current_timestamp(),
  `created_by` int(5) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_berita`
--

INSERT INTO `tbl_berita` (`id`, `link_foto`, `link_berita`, `judul`, `kategori`, `paragraf_pertama`, `tanggal_publish`, `created_by`, `created_at`) VALUES
(1, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-22 22:40:41'),
(2, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-22 22:43:08'),
(3, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-22 23:29:16'),
(4, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-22 23:30:14'),
(5, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-22 23:34:34'),
(6, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 08:34:14'),
(7, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:10:35'),
(8, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:13:59'),
(9, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:14:37'),
(10, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:14:58'),
(11, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:16:04'),
(12, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:16:28'),
(13, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:16:58'),
(14, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:17:51'),
(15, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:18:10'),
(16, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:21:07'),
(17, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:22:09'),
(18, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:23:21'),
(19, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 09:23:44'),
(20, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 10:17:23'),
(21, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 10:21:13'),
(22, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 10:52:06'),
(23, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:37:19'),
(24, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:37:48'),
(25, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:39:22'),
(26, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:40:01'),
(27, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:40:30'),
(28, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:41:38'),
(29, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:43:47'),
(30, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:44:29'),
(31, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:44:30'),
(32, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:44:45'),
(33, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:44:53'),
(34, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:45:43'),
(35, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:48:01'),
(36, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:48:15'),
(37, 'www.analisadaily2.com', 'www.analisadaily2.com', 'Hari ini kumpul ya', '1', 'habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku habis mandi kutunggu ibu membersihkan tempat tidurku', '2021-09-18', 1, '2021-09-23 11:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id` int(11) NOT NULL,
  `response` varchar(255) NOT NULL,
  `status_code` varchar(20) NOT NULL,
  `request_param` varchar(2550) NOT NULL,
  `user_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`id`, `response`, `status_code`, `request_param`, `user_id`) VALUES
(1, '{\"error\":{\"message\":\"link_foto parameter is required.\",\"status\":412}}', '412', '', 1),
(2, '{\"error\":{\"message\":\"link_foto parameter is required.\",\"status\":412}}', '412', '', 1),
(3, '{\"error\":{\"message\":\"link_foto parameter is required.\",\"status\":412}}', '412', '', 1),
(4, 'Post successfully.', '201', 'www.analisadaily2.com', 1),
(5, '{\"error\":{\"message\":\"SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'request_param\' cannot be null\",\"status\":400}}', '412', '', 1),
(6, 'Post successfully.', '201', 'www.analisadaily2.com', 1),
(7, 'Post successfully.', '201', 'Hari ini kumpul ya', 1),
(8, '{\"error\":{\"message\":\"link_berita parameter is required.\",\"status\":412}}', '412', '', 1),
(9, '{\"error\":{\"message\":\"link_foto parameter is required.\",\"status\":412}}', '412', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `password`, `active`, `created_at`) VALUES
(1, 'detik', 'detik@gmail.com', '12345', 1, '2021-09-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
