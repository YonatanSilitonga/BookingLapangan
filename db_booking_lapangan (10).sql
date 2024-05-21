-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 09:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_olahraga`
--

INSERT INTO `booking_olahraga` (`id_booking_olahraga`, `id_pengguna`, `waktu_mulai_booking`, `waktu_selesai_booking`, `created_at`, `created_by`, `updated_at`, `updated_by`, `id_lapangan`, `nama_pemesan`, `email_pemesan`, `catatan`, `nama_lapangan`, `status`) VALUES
(1, 9125, '2024-05-21 08:00:00', '2024-05-21 10:00:00', '2024-05-20 14:00:00', 'admin', NULL, NULL, 1, 'John Doe', 'john.doe@example.com', 'First booking', 'Lapangan A', 'Confirmed'),
(2, 9125, '2024-05-22 09:00:00', '2024-05-22 11:00:00', '2024-05-20 14:30:00', 'admin', NULL, NULL, 2, 'Jane Smith', 'jane.smith@example.com', NULL, 'Lapangan B', 'Pending'),
(3, 9125, '2024-05-23 07:00:00', '2024-05-23 09:00:00', '2024-05-20 15:00:00', 'admin', NULL, NULL, 3, 'Alice Johnson', 'alice.johnson@example.com', 'Preferred early morning', 'Lapangan C', 'Confirmed'),
(4, 9125, '2024-05-24 16:00:00', '2024-05-24 18:00:00', '2024-05-20 15:30:00', 'admin', NULL, NULL, 1, 'Bob Brown', 'bob.brown@example.com', NULL, 'Lapangan A', 'Cancelled'),
(5, 9125, '2024-05-25 12:00:00', '2024-05-25 14:00:00', '2024-05-20 16:00:00', 'admin', NULL, NULL, 2, 'Charlie Davis', 'charlie.davis@example.com', 'Birthday event', 'Lapangan B', 'Confirmed'),
(6, 9125, '2024-05-26 14:00:00', '2024-05-26 16:00:00', '2024-05-20 16:30:00', 'admin', NULL, NULL, 3, 'Diana Clark', 'diana.clark@example.com', 'Afternoon slot', 'Lapangan C', 'Pending'),
(7, 9125, '2024-05-27 10:00:00', '2024-05-27 12:00:00', '2024-05-20 17:00:00', 'admin', NULL, NULL, 1, 'Edward Wilson', 'edward.wilson@example.com', NULL, 'Lapangan A', 'Confirmed'),
(8, 9125, '2024-05-28 11:00:00', '2024-05-28 13:00:00', '2024-05-20 17:30:00', 'admin', NULL, NULL, 2, 'Fiona Martinez', 'fiona.martinez@example.com', 'Bringing guests', 'Lapangan B', 'Confirmed'),
(9, 9125, '2024-05-29 15:00:00', '2024-05-29 17:00:00', '2024-05-20 18:00:00', 'admin', NULL, NULL, 3, 'George Harris', 'george.harris@example.com', NULL, 'Lapangan C', 'Cancelled'),
(10, 9125, '2024-05-30 08:00:00', '2024-05-30 10:00:00', '2024-05-20 18:30:00', 'admin', NULL, NULL, 1, 'Hannah White', 'hannah.white@example.com', 'Morning exercise', 'Lapangan A', 'Confirmed');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lapangan_olahraga`
--

INSERT INTO `lapangan_olahraga` (`id_lapangan`, `id_lokasi`, `nama_lapangan`, `harga_lapangan`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deskripsi_lapangan`, `img_lapangan`) VALUES
(138, 1, 'Lapangan Merdeka', 25000, '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', '', '');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama_lokasi`, `alamat`, `deskripsi`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'sibolga', 'Jl. Sisimangaraja', 'Lapangan futsal terbaik di Sibolga', NULL, '2024-05-21 07:01:40', '2024-05-21 07:01:40'),
(2, 'tarutung', 'Jl. HKI Tarutung', 'Lapangan sepak bola sekarang ada di samping Gereja HKI Tarutung Kota !', NULL, '2024-05-21 07:02:42', '2024-05-21 07:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `jenis_pelanggan` enum('biasa','member') NOT NULL,
  `tgl_berakhir_member` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `id_pengguna`, `jenis_pelanggan`, `tgl_berakhir_member`) VALUES
(1, 9123, 'biasa', NULL),
(2, 9375, 'member', '2024-12-31'),
(3, 9487, 'biasa', NULL),
(4, 9621, 'member', '2024-11-30'),
(5, 9734, 'biasa', NULL),
(6, 9812, 'member', '2024-10-31'),
(7, 9955, 'biasa', NULL),
(8, 9104, 'member', '2024-09-30'),
(9, 9216, 'biasa', NULL),
(10, 9348, 'member', '2024-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `pengelola_lapangan`
--

CREATE TABLE `pengelola_lapangan` (
  `id_pengelola_lapangan` int(11) NOT NULL,
  `id_lapangan` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `status` enum('aktif','nonaktif') NOT NULL DEFAULT 'aktif',
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna_olahraga`
--

INSERT INTO `pengguna_olahraga` (`id_pengguna`, `username_pengguna`, `password_pengguna`, `jenis_pengguna`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_login`) VALUES
(9125, 'jawir', '$2y$10$Rp04/teLeItsZXcYYebBaufVIR4zxHAkeHOITUnDWWxSYe/eX.g.W', 'pemilik', '2024-05-20 03:00:57.000000', 'admin', '2024-05-20 03:49:07', 'admin', '2024-05-20 03:49:07'),
(9126, 'yanti', '$2y$10$.xWMRpTeHouVTJ2bp20XuecYaGy.f4zPmtySWVwrzwnvzc3XfQlKi', 'pelanggan', '2024-05-20 03:02:18.000000', 'admin', '2024-05-20 03:02:39', 'admin', '2024-05-20 03:02:39'),
(9128, 'sepin', '$2y$10$R4RVVwLgDbiu5cwXwtMOn.okc1f3rJ2WM8YmvqysK06CkZmh.0lum', 'pelanggan', '2024-05-20 03:04:55.000000', 'sepin', '2024-05-20 03:05:00', 'sepin', '2024-05-20 03:05:00'),
(9129, 'daniel', '$2y$10$jdXmKxVW0O0MAO9U.ocAtucRvYiS9y9ZwPQv9qM8EN6Dd9vsoMjKG', 'pengelola', '2024-05-20 03:07:35.000000', 'admin', '2024-05-20 03:18:04', 'admin', '2024-05-20 03:18:04'),
(9130, 'gomgom', '$2y$10$nLqWimY6NBQvImmwNPZoROnigBszkmiBMxUOZExQJdovM61lhgDmK', 'pelanggan', '2024-05-20 03:17:39.000000', 'gomgom', '2024-05-20 03:17:47', 'gomgom', '2024-05-20 03:17:47');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `pengelola_lapangan`
--
ALTER TABLE `pengelola_lapangan`
  ADD PRIMARY KEY (`id_pengelola_lapangan`),
  ADD KEY `id_lapangan` (`id_lapangan`);

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
-- AUTO_INCREMENT for table `lapangan_olahraga`
--
ALTER TABLE `lapangan_olahraga`
  MODIFY `id_lapangan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengelola_lapangan`
--
ALTER TABLE `pengelola_lapangan`
  MODIFY `id_pengelola_lapangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna_olahraga`
--
ALTER TABLE `pengguna_olahraga`
  MODIFY `id_pengguna` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9131;

--
-- AUTO_INCREMENT for table `transaksi_olahraga`
--
ALTER TABLE `transaksi_olahraga`
  MODIFY `id_transaksi_olahraga` int(12) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `id_lokas` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasi` (`id_lokasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `id_pengguna` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna_olahraga` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengelola_lapangan`
--
ALTER TABLE `pengelola_lapangan`
  ADD CONSTRAINT `pengelola_lapangan_ibfk_1` FOREIGN KEY (`id_lapangan`) REFERENCES `lapangan_olahraga` (`id_lapangan`);

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
