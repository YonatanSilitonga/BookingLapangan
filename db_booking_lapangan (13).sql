-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 07, 2024 at 06:23 AM
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
(89, 9131, '2024-05-22 03:20:00', '2024-05-22 04:20:00', '2024-05-21 20:20:31', 'yonatan', '2024-06-07 02:26:34', NULL, 138, 'yonatan', 'guru@gmail.com', NULL, 'lapangan basket 1', 'not approve'),
(90, 9151, '2024-06-07 10:09:00', '2024-06-07 12:09:00', '2024-06-07 03:09:30', 'silitonga', '2024-06-07 03:19:57', NULL, 138, 'silitonga', 'admin@gmail.com', 'aku adalah member', 'lapangan basket 2', 'not approve'),
(91, 9151, '2024-06-07 10:13:00', '2024-06-07 12:14:00', '2024-06-07 03:12:17', 'silitonga', '2024-06-07 03:29:38', NULL, 138, 'silitonga', 'yonatansitorus@gmail.com', NULL, 'lapangan basket 2', 'not approve'),
(92, 9151, '2024-06-07 10:23:00', '2024-06-07 14:22:00', '2024-06-07 03:22:25', 'silitonga', '2024-06-07 03:29:41', NULL, 138, 'silitonga', 'yonatanrizky02@gmail.com', NULL, 'lapangan basket 2', 'approve'),
(93, 9151, '2024-06-07 10:27:00', '2024-06-07 13:26:00', '2024-06-07 03:26:59', 'silitonga', '2024-06-07 03:26:59', NULL, 138, 'silitonga', 'guru@gmail.com', 'nknknk', 'lapangan basket 2', 'approve'),
(94, 9152, '2024-06-07 10:29:00', '2024-06-07 13:28:00', '2024-06-07 03:28:19', 'jappy', '2024-06-07 03:29:44', NULL, 138, 'jappy', 'admin@gmail.com', 'qwqq', 'lapangan basket 2', 'not approve');

-- --------------------------------------------------------

--
-- Table structure for table `lapangan_olahraga`
--

CREATE TABLE `lapangan_olahraga` (
  `id_lapangan` int(12) NOT NULL,
  `id_lokasi` int(12) NOT NULL,
  `nama_lapangan` varchar(30) NOT NULL,
  `harga_lapangan` double NOT NULL,
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

INSERT INTO `lapangan_olahraga` (`id_lapangan`, `id_lokasi`, `nama_lapangan`, `harga_lapangan`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deskripsi_lapangan`, `img_lapangan`) VALUES
(138, 1, 'lapangan basket 2', 1230000, '2024-05-21 18:41:19', NULL, '2024-05-22 02:36:04', NULL, 'keren', 'img/badminton1_1716316879.jpeg'),
(139, 1, 'lapangan basket', 12300002, '2024-05-22 03:21:01', NULL, '2024-05-22 03:21:01', NULL, 'VSD', 'img/badminton2_1716348060.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(225) DEFAULT NULL,
  `updated_by` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama_lokasi`, `alamat`, `deskripsi`, `foto`, `updated_at`, `created_at`, `created_by`, `updated_by`) VALUES
(1, 'jl siantar', 'balimbingan tanah jawa', 'lapangan kosongo', NULL, '2024-05-21 18:40:40', '2024-05-21 18:40:40', 'jawir', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `jenis_pelanggan` enum('biasa','member') NOT NULL,
  `id_pengguna` int(12) NOT NULL,
  `tgl_berakhir_member` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `jenis_pelanggan`, `id_pengguna`, `tgl_berakhir_member`, `updated_at`, `created_at`) VALUES
(3, 'member', 9132, '2025-05-22 03:13:41', '2024-05-22 03:13:41', '2024-05-22 03:13:41'),
(4, 'member', 9150, '2025-06-06 17:25:23', '2024-06-06 17:25:23', '2024-06-06 17:25:15'),
(5, 'member', 9151, '2025-06-07 03:07:41', '2024-06-07 03:07:41', '2024-06-07 02:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `pengelola_lapangan`
--

CREATE TABLE `pengelola_lapangan` (
  `id_pengelola_lapangan` int(11) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `id_pengguna` int(12) NOT NULL,
  `tanggal_mulai` datetime NOT NULL,
  `tanggal_selesai` datetime DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT 'aktif',
  `keterangan` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(225) DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengelola_lapangan`
--

INSERT INTO `pengelola_lapangan` (`id_pengelola_lapangan`, `id_lokasi`, `id_pengguna`, `tanggal_mulai`, `tanggal_selesai`, `status`, `keterangan`, `created_at`, `created_by`, `updated_at`) VALUES
(9, 1, 9149, '2024-06-06 17:16:12', NULL, 'aktif', NULL, '2024-06-06 17:16:12', 'admin', '2024-06-06 17:16:12');

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
  `updated_by` varchar(20) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `tgl_member_berakhir` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna_olahraga`
--

INSERT INTO `pengguna_olahraga` (`id_pengguna`, `username_pengguna`, `password_pengguna`, `jenis_pengguna`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_login`, `tgl_member_berakhir`) VALUES
(3, 'jawir', '$2a$12$zaavdPT5wDJCNg1iAutgsuD9RoBmabLDi7.f5weKlprt/.g4GcSgu', 'pemilik', NULL, '', '2024-06-07 03:29:03', '', '2024-06-07 03:29:03', '0000-00-00 00:00:00'),
(9131, 'yonatan', '$2y$10$ZZJOkfhsbJi7DwvNq7AbAOKUL0/pqIHd7YRqvUgeRhWieiuz2ZVO2', 'pelanggan', '2024-05-21 19:58:23.000000', 'yonatan', '2024-05-22 02:40:08', 'yonatan', '2024-05-22 02:40:08', '0000-00-00 00:00:00'),
(9132, 'samuel', '$2y$10$an./3dXnqsgUOYL45mBhnOHS7AsxbXGo5UyhG6LMiZ3/4WxKDXbBa', 'pelanggan', '2024-05-22 03:08:07.000000', 'samuel', '2024-05-22 03:13:20', 'samuel', '2024-05-22 03:13:20', NULL),
(9149, 'yonatan sitorus', '$2y$10$TJS4MrOYg39701RsJLbgMuvwoR3T4IJHLzwu4uWUmaXAXTTaFk4Tu', 'pengelola', '2024-06-06 17:16:12.000000', 'admin', '2024-06-07 03:32:57', 'admin', '2024-06-07 03:32:57', NULL),
(9150, 'risky', '$2y$10$s9m3K768DqHTD1.V9qGAK.ZvSPyOWtPIpBplU.OLvl8om9vVhl7G2', 'pelanggan', '2024-06-06 17:24:42.000000', 'admin', '2024-06-06 17:25:01', 'admin', '2024-06-06 17:25:01', NULL),
(9151, 'silitonga', '$2y$10$D54Wq4XMSbpp2pgJJhC2neJCW6ZyLjTNrgh4e50i/l/3.BoqFp5D6', 'pelanggan', '2024-06-07 02:27:07.000000', 'silitonga', '2024-06-07 03:21:53', 'silitonga', '2024-06-07 03:21:53', NULL),
(9152, 'jappy', '$2y$10$cViTj06/rWPzWKs1CnFsFONCw9bH/0Z6TNOLHMon019ERXdz6adEy', 'pelanggan', '2024-06-07 03:27:53.000000', 'jappy', '2024-06-07 03:27:59', 'jappy', '2024-06-07 03:27:59', NULL);

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
(100, 'bulu raket', 10000, 10, '2024-05-20 06:23:51', NULL, '2024-05-20 06:23:51', NULL, '');

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
-- Indexes for table `lapangan_olahraga`
--
ALTER TABLE `lapangan_olahraga`
  ADD PRIMARY KEY (`id_lapangan`),
  ADD KEY `id_lokasi` (`id_lokasi`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD KEY `jenis_pelanggan` (`jenis_pelanggan`),
  ADD KEY `jenis_pelanggan_2` (`jenis_pelanggan`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `pengelola_lapangan`
--
ALTER TABLE `pengelola_lapangan`
  ADD PRIMARY KEY (`id_pengelola_lapangan`),
  ADD KEY `id_lapangan` (`id_lokasi`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_lokasi` (`id_lokasi`);

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
  MODIFY `id_booking_olahraga` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `lapangan_olahraga`
--
ALTER TABLE `lapangan_olahraga`
  MODIFY `id_lapangan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengelola_lapangan`
--
ALTER TABLE `pengelola_lapangan`
  MODIFY `id_pengelola_lapangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengguna_olahraga`
--
ALTER TABLE `pengguna_olahraga`
  MODIFY `id_pengguna` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9153;

--
-- AUTO_INCREMENT for table `transaksi_olahraga`
--
ALTER TABLE `transaksi_olahraga`
  MODIFY `id_transaksi_olahraga` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `lapangan_olahraga`
--
ALTER TABLE `lapangan_olahraga`
  ADD CONSTRAINT `id_lokas` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`);

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna_olahraga` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengelola_lapangan`
--
ALTER TABLE `pengelola_lapangan`
  ADD CONSTRAINT `pengelola_lapangan` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`),
  ADD CONSTRAINT `pengelola_lapangan2` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna_olahraga` (`id_pengguna`);

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
