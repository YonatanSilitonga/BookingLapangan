-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 19, 2024 at 05:45 PM
-- Server version: 10.4.11-MariaDB-log
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_booking_lapangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_olahraga`
--

CREATE TABLE `booking_olahraga` (
  `id_booking_olahraga` int(12) NOT NULL,
  `id_pengguna` int(12) NOT NULL,
  `waktu_mulai_booking` datetime NOT NULL,
  `waktu_selesai_booking` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(30) DEFAULT NULL,
  `id_lapangan` int(12) NOT NULL,
  `nama_pemesan` varchar(100) NOT NULL,
  `email_pemesan` varchar(200) NOT NULL,
  `catatan` text DEFAULT NULL,
  `nama_lapangan` varchar(50) NOT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_olahraga`
--

INSERT INTO `booking_olahraga` (`id_booking_olahraga`, `id_pengguna`, `waktu_mulai_booking`, `waktu_selesai_booking`, `created_at`, `created_by`, `updated_at`, `updated_by`, `id_lapangan`, `nama_pemesan`, `email_pemesan`, `catatan`, `nama_lapangan`, `status`) VALUES
(71, 9114, '2024-03-08 16:27:22', '0000-00-00 00:00:00', NULL, NULL, '2024-03-20 06:16:22', NULL, 137, '', '', NULL, '', 'approve'),
(72, 9116, '2024-03-20 10:34:00', '2024-03-20 11:34:00', '2024-03-20 03:34:52', NULL, '2024-03-21 09:50:02', NULL, 137, 'yonatan silitonga risky', 'yonatanrizky02@gmail.com', 'KODONG', 'Lapangann Basket Adam Malik', 'approve'),
(74, 9116, '2024-03-20 14:28:00', '2024-03-20 15:28:00', '2024-03-20 07:29:10', 'Dewa armada', '2024-03-20 07:29:33', NULL, 137, 'Dewa armada', 'yonathansilitonga01@gmail.com', 'Belum ada catatan khusus', 'Lapangann Basket Adam Malik', 'approve'),
(75, 9116, '2024-03-20 14:43:00', '2024-03-20 14:44:00', '2024-03-20 07:43:32', 'yonatan', '2024-03-20 07:58:27', NULL, 137, 'yonatan', 'yonathansilitonga01@gmail.com', 'jorok', 'Lapangann Basket Adam Malik', 'not approve'),
(76, 9120, '2024-03-20 15:17:00', '2024-03-20 18:16:00', '2024-03-20 08:16:37', 'jonatan', '2024-03-22 01:49:39', NULL, 137, 'jonatan', 'yonatanrizky02@gmail.com', 'lorem', 'Lapangann Basket Adam Malik', 'not approve'),
(77, 9116, '2024-03-21 22:12:00', '2024-03-21 23:12:00', '2024-03-21 13:12:57', 'guru', '2024-03-21 13:13:24', NULL, 137, 'guru', 'yonatanrizky02@gmail.com', 'approve lah', 'Lapangann Basket Adam Malik', 'approve'),
(78, 9121, '2024-03-22 12:01:00', '2024-03-22 14:00:00', '2024-03-22 01:48:46', 'gurusekolah', '2024-03-22 01:49:45', NULL, 137, 'gurusekolah', 'if423005@students.del.ac.id', NULL, 'Lapangann Basket Adam Malik', 'approve'),
(79, 9123, '2024-03-26 21:03:00', '2024-03-27 21:03:00', '2024-03-26 14:03:50', 'guru', '2024-04-03 08:54:46', NULL, 137, 'guru', 'yonatanrizky02@gmail.com', 'yanto mirip sandhika galih', 'Lapangann Basket Adam Malik', 'approve'),
(80, 9116, '2024-03-27 10:51:00', '2024-03-27 15:51:00', '2024-03-27 03:51:48', 'gurusekolah', '2024-03-27 03:56:00', NULL, 137, 'gurusekolah', 'vafva@gmail.com', 'jangan meroasting ya teman', 'Lapangann Basket Adam Malik', 'approve'),
(81, 9116, '2024-03-27 11:06:00', '2024-03-27 16:01:00', '2024-03-27 04:06:56', 'Daniel', '2024-03-27 04:08:33', NULL, 137, 'Daniel', 'daniel@gmailcom', 'Beli Sekarang', 'Lapangann Basket Adam Malik', 'approve'),
(82, 9116, '2024-03-27 16:29:00', '2024-03-27 18:29:00', '2024-03-27 04:30:01', 'admin', '2024-04-03 08:54:50', NULL, 137, 'admin', 'if423005@students.del.ac.id', NULL, 'Lapangann Basket Adam Malik', 'approve'),
(83, 9124, '2024-03-27 11:44:00', '2024-03-27 11:45:00', '2024-03-27 04:44:28', 'guru', '2024-03-27 04:51:45', NULL, 137, 'guru', 'yonatanrizky02@gmail.com', 'oke kgas', 'Lapangann Basket Adam Malik', 'approve'),
(84, 9116, '2024-04-03 15:56:00', '2024-04-12 15:56:00', '2024-04-03 08:56:29', 'guru', '2024-04-03 08:59:03', NULL, 137, 'guru', 'yonatanrizky02@gmail.com', 'a', 'Lapangann Basket Adam Malik', 'approve'),
(85, 9116, '2024-04-03 15:56:00', '2024-04-12 15:56:00', '2024-04-03 08:56:29', 'guru', '2024-04-03 08:59:06', NULL, 137, 'guru', 'yonatanrizky02@gmail.com', 'a', 'Lapangann Basket Adam Malik', 'approve'),
(86, 9116, '2024-04-17 16:06:00', '2024-04-30 16:06:00', '2024-04-03 09:06:17', 'admin', '2024-04-03 09:16:36', NULL, 137, 'admin', 'yonatanrizky02@gmail.com', 'k', 'Lapangann Basket Adam Malik', 'not approve'),
(87, 9116, '2024-04-04 15:39:00', '2024-04-04 16:39:00', '2024-04-04 08:39:28', 'guru', '2024-04-04 08:40:09', NULL, 137, 'guru', 'yonatanrizky02@gmail.com', NULL, 'Lapangann Basket Adam Malik', 'not approve'),
(88, 9121, '2024-05-19 21:26:00', '2024-05-19 22:28:00', '2024-05-19 14:27:07', 'guru\\', '2024-05-19 14:58:20', NULL, 137, 'guru\\', 'guru@gmail.com', NULL, 'Lapangann Basket Adam Malik', 'not approve');

-- --------------------------------------------------------

--
-- Table structure for table `informasi_olahraga`
--

CREATE TABLE `informasi_olahraga` (
  `id_informasi` int(12) NOT NULL,
  `nama_informasi` varchar(50) NOT NULL,
  `isi_informasi` varchar(300) NOT NULL,
  `file_informasi` varchar(200) NOT NULL,
  `waktu_aktif_informasi` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `id_pengguna` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_lapangan`
--

CREATE TABLE `kategori_lapangan` (
  `id_katlapangan` int(12) NOT NULL,
  `nama_katlapangan` varchar(50) NOT NULL,
  `jenis_lapangan` varchar(100) NOT NULL,
  `file_katlapangan` varchar(900) NOT NULL,
  `jumlah_lapangan` int(12) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(10) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori_lapangan`
--

INSERT INTO `kategori_lapangan` (`id_katlapangan`, `nama_katlapangan`, `jenis_lapangan`, `file_katlapangan`, `jumlah_lapangan`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(6, 'Lapangan Basket', 'Lapangan Sedang', 'Lapangan basket adalah area permainan yang dirancang khusus untuk olahraga bola basket. Lapangan ini biasanya terdiri dari sebuah lapangan persegi panjang dengan garis-garis pembatas, seperti garis tengah, garis lebar, dan garis tiga poin. Permukaan lapangan biasanya terbuat dari beton atau aspal yang dilapisi dengan bahan seperti akrilik atau poliuretan', 2, '2024-03-10 13:41:58', 'admin', '2024-03-10 13:41:58', NULL),
(7, 'Lapangan Voli', 'Lapangan Sedang', 'Lapangan voli adalah area bermain yang digunakan untuk olahraga voli. Lapangan ini biasanya berbentuk persegi panjang dengan ukuran yang ditetapkan sesuai standar internasional. Lapangan voli memiliki garis batas yang menandai area permainan, termasuk garis sisi, garis tengah, dan garis belakang. Permukaan lapangan biasanya terbuat dari beton atau material sintetis yang memberikan cengkeraman yang baik untuk pemain. Lapangan voli dilengkapi dengan jaring yang dipasang di tengah-tengah lapangan, yang membagi lapangan menjadi dua area yang sama besar.', 2, '2024-03-10 13:42:45', 'admin', '2024-03-10 13:42:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lapangan_olahraga`
--

CREATE TABLE `lapangan_olahraga` (
  `id_lapangan` int(12) NOT NULL,
  `nama_lapangan` varchar(30) NOT NULL,
  `harga_lapangan` double NOT NULL,
  `id_katlapangan` int(12) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(30) DEFAULT NULL,
  `deskripsi_lapangan` text NOT NULL,
  `img_lapangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lapangan_olahraga`
--

INSERT INTO `lapangan_olahraga` (`id_lapangan`, `nama_lapangan`, `harga_lapangan`, `id_katlapangan`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deskripsi_lapangan`, `img_lapangan`) VALUES
(137, 'Lapangann Basket Adam Malik', 120000, 6, '2024-03-20 03:05:48', NULL, '2024-03-20 03:05:48', NULL, 'lapangan basket adam malik dilengkapi dengan fasilitas yang memadai', 'img/Badminton_1710903948.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `jenis_pelanggan` enum('biasa','member') NOT NULL,
  `tgl_berakhir_member` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna_olahraga`
--

CREATE TABLE `pengguna_olahraga` (
  `id_pengguna` int(12) NOT NULL,
  `username_pengguna` varchar(200) NOT NULL,
  `password_pengguna` varchar(200) NOT NULL,
  `jenis_pengguna` enum('pemilik','pengelola','pelanggan','') NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(20) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(20) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna_olahraga`
--

INSERT INTO `pengguna_olahraga` (`id_pengguna`, `username_pengguna`, `password_pengguna`, `jenis_pengguna`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_login`) VALUES
(15, 'gurusekolah', 'juga', 'pemilik', '2024-02-25 14:31:57.000000', 'gurusekolah', '0000-00-00 00:00:00', '', '2024-03-07 10:24:53'),
(9114, 'admin', 'admin', 'pemilik', '2024-03-06 07:07:05.000000', 'admin', NULL, '', '2024-03-20 05:21:10'),
(9116, 'yonatan', '$2y$10$KXrqz.FlmNMH/Okt2azj/uAt3ey3Lrmom8mzOZe9yV3gXQN8Pk5Oq', 'pemilik', '2024-03-10 04:20:54.000000', 'yonatan', '2024-04-04 09:32:26', 'yonatan', '2024-04-04 09:32:26'),
(9117, 'guru', 'aja', 'pemilik', '2024-03-10 05:32:22.000000', 'guru', NULL, '', '2024-03-14 10:13:50'),
(9118, 'tri', '$2y$10$u8Xivm8xcfpzwW8SBSr7zusPTmVUIEgjrnSjRxpbhNkwPMQcJTpOO', 'pemilik', '2024-03-10 14:22:12.000000', 'tri', '2024-03-10 14:22:12', 'tri', NULL),
(9119, 'Pak Oppir', 'Baik Hati', 'pemilik', '2024-03-14 10:29:58.000000', 'Pak Oppir', NULL, '', '2024-03-14 10:31:11'),
(9120, 'jonatan', '$2y$10$g1G6IP.CgriaEsZbrOqJ.O8WjgFp4t/7HQf0cHbTXfZH61nrsOgja', 'pemilik', '2024-03-20 08:03:14.000000', 'jonatan', '2024-03-20 08:16:11', 'jonatan', '2024-03-20 08:16:11'),
(9121, 'daniel', '$2y$10$lTFEDDGxfyRZBua98.2b1.K8e7VHengk2MquwuEKYYEvF0naB5r2W', 'pemilik', '2024-03-22 01:47:18.000000', 'daniel', '2024-05-19 14:57:11', 'daniel', '2024-05-19 14:57:11'),
(9122, 'gracia', '$2y$10$9zn1.P9/OIPV/xAAmE56DeeKRJjtsL2jcMUnxysvKhsfl7oJdivP.', 'pemilik', '2024-03-26 14:01:27.000000', 'gracia', '2024-03-26 14:01:27', 'gracia', NULL),
(9123, 'gra', '$2y$10$MnIy9uoJwAY0mmBRED2Sg.FNtbkMOicH5ratTsJckVNbrWP/P9Wwy', 'pemilik', '2024-03-26 14:01:51.000000', 'gra', '2024-03-26 14:02:10', 'gra', '2024-03-26 14:02:10'),
(9124, 'Mei', '$2y$10$G7Aog172TYQHvsb9jnhSSuz7MjXXQe5hUwgcTkv2fwDVYAJeSJfZ2', 'pemilik', '2024-03-27 04:42:44.000000', 'Mei', '2024-03-27 04:51:57', 'Mei', '2024-03-27 04:51:57');

-- --------------------------------------------------------

--
-- Table structure for table `produk_olahraga`
--

CREATE TABLE `produk_olahraga` (
  `id_produkolahraga` int(12) NOT NULL,
  `nama_produkolahraga` varchar(50) NOT NULL,
  `harga_produkolahraga` double NOT NULL,
  `stok_produkolahraga` int(12) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(30) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(30) DEFAULT NULL,
  `img_product` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_olahraga`
--

INSERT INTO `produk_olahraga` (`id_produkolahraga`, `nama_produkolahraga`, `harga_produkolahraga`, `stok_produkolahraga`, `created_at`, `created_by`, `updated_at`, `updated_by`, `img_product`) VALUES
(35, 'bola basket', 140000, 1, '2024-03-20 03:06:30', NULL, '2024-04-03 08:53:33', NULL, 'img/Screenshot 2023-08-29 210939_1712134413.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_olahraga`
--

CREATE TABLE `transaksi_olahraga` (
  `id_transaksi_olahraga` int(12) NOT NULL,
  `id_pengguna` int(12) NOT NULL,
  `id_produkolahraga` int(12) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `nama_pemesan` varchar(12) NOT NULL,
  `jumlah` int(12) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_olahraga`
--

INSERT INTO `transaksi_olahraga` (`id_transaksi_olahraga`, `id_pengguna`, `id_produkolahraga`, `created_at`, `created_by`, `nama_pemesan`, `jumlah`, `updated_at`) VALUES
(8, 9116, 35, '2024-04-04 09:32:44', '9116', 'yonatan', 1, NULL),
(9, 9121, 35, '2024-05-19 14:57:23', '9121', 'guru', 1, NULL),
(10, 9121, 35, '2024-05-19 14:57:40', '9121', 'guru', 20, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_olahraga`
--
ALTER TABLE `booking_olahraga`
  ADD PRIMARY KEY (`id_booking_olahraga`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_pengguna_2` (`id_pengguna`),
  ADD KEY `id_pengguna_3` (`id_pengguna`),
  ADD KEY `id_pengguna_4` (`id_pengguna`),
  ADD KEY `id_lapangan` (`id_lapangan`);

--
-- Indexes for table `informasi_olahraga`
--
ALTER TABLE `informasi_olahraga`
  ADD PRIMARY KEY (`id_informasi`),
  ADD KEY `informasi_pengguna` (`id_pengguna`);

--
-- Indexes for table `kategori_lapangan`
--
ALTER TABLE `kategori_lapangan`
  ADD PRIMARY KEY (`id_katlapangan`);

--
-- Indexes for table `lapangan_olahraga`
--
ALTER TABLE `lapangan_olahraga`
  ADD PRIMARY KEY (`id_lapangan`),
  ADD KEY `id_katlapangan` (`id_katlapangan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `pengguna_olahraga`
--
ALTER TABLE `pengguna_olahraga`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `produk_olahraga`
--
ALTER TABLE `produk_olahraga`
  ADD PRIMARY KEY (`id_produkolahraga`);

--
-- Indexes for table `transaksi_olahraga`
--
ALTER TABLE `transaksi_olahraga`
  ADD PRIMARY KEY (`id_transaksi_olahraga`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_produkolahraga` (`id_produkolahraga`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_olahraga`
--
ALTER TABLE `booking_olahraga`
  MODIFY `id_booking_olahraga` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `informasi_olahraga`
--
ALTER TABLE `informasi_olahraga`
  MODIFY `id_informasi` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_lapangan`
--
ALTER TABLE `kategori_lapangan`
  MODIFY `id_katlapangan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lapangan_olahraga`
--
ALTER TABLE `lapangan_olahraga`
  MODIFY `id_lapangan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna_olahraga`
--
ALTER TABLE `pengguna_olahraga`
  MODIFY `id_pengguna` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9125;

--
-- AUTO_INCREMENT for table `produk_olahraga`
--
ALTER TABLE `produk_olahraga`
  MODIFY `id_produkolahraga` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `transaksi_olahraga`
--
ALTER TABLE `transaksi_olahraga`
  MODIFY `id_transaksi_olahraga` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_olahraga`
--
ALTER TABLE `booking_olahraga`
  ADD CONSTRAINT `booking_lapangan` FOREIGN KEY (`id_lapangan`) REFERENCES `lapangan_olahraga` (`id_lapangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_olahraga_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna_olahraga` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `informasi_olahraga`
--
ALTER TABLE `informasi_olahraga`
  ADD CONSTRAINT `informasi_pengguna` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna_olahraga` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lapangan_olahraga`
--
ALTER TABLE `lapangan_olahraga`
  ADD CONSTRAINT `lapangan_olahraga` FOREIGN KEY (`id_katlapangan`) REFERENCES `kategori_lapangan` (`id_katlapangan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `id_pengguna` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna_olahraga` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_olahraga`
--
ALTER TABLE `transaksi_olahraga`
  ADD CONSTRAINT `transaksi_olahraga` FOREIGN KEY (`id_produkolahraga`) REFERENCES `produk_olahraga` (`id_produkolahraga`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_olahraga_ibfk_3` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna_olahraga` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
