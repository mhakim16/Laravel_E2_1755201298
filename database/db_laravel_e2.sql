-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2020 at 02:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_laravel_e2`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_lengkap`, `prodi`, `alamat`, `created_at`, `updated_at`) VALUES
('1755201290', 'Fajril Hayat', 55201, 'Poris', '2020-08-13 04:52:16', '2020-08-13 04:52:16'),
('1755201291', 'Sintya Zahra', 55201, 'Kotabumi', '2020-08-13 01:59:49', '2020-08-13 01:59:49'),
('1755202290', 'Irpan', 55202, 'Jl Tanjung Burung', '2020-08-13 01:56:34', '2020-08-13 01:56:34'),
('1755202291', 'Nabilla Ayumi', 55202, 'Neglasari', '2020-08-13 02:00:22', '2020-08-13 02:00:22'),
('1755203290', 'SelamatHariRaya', 55203, 'Ketapang Dongkal', '2020-08-13 01:57:26', '2020-08-13 01:57:26'),
('1755203291', 'Amara Muthia', 55203, 'Taman Jaya', '2020-08-13 02:01:07', '2020-08-13 02:01:07'),
('1755204290', 'Imam Nasution', 55204, 'Gondrong Petir', '2020-08-13 01:58:12', '2020-08-13 01:58:12'),
('1755204291', 'Claudya Cantika', 55204, 'Jakarta Selatan', '2020-08-13 02:02:13', '2020-08-13 02:02:13'),
('1755205290', 'Siti Ropeah', 55205, 'Mauk', '2020-08-13 01:59:09', '2020-08-13 01:59:09'),
('1755205291', 'Netih', 55205, 'Cipondoh', '2020-08-13 02:02:40', '2020-08-13 02:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` int(11) NOT NULL,
  `nama_mk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`, `created_at`, `updated_at`) VALUES
(101111, 'Pemrograman Web', 3, '6', '2020-08-13 08:34:02', '2020-08-13 08:34:02'),
(102222, 'Pemrograman Java', 3, '6', '2020-08-13 08:34:02', '2020-08-13 08:34:02'),
(103333, 'Kerja Praktek', 4, '6', '2020-08-13 08:34:02', '2020-08-13 08:34:02'),
(104444, 'E bisnis', 2, '6', '2020-08-13 08:34:02', '2020-08-13 08:34:02'),
(105555, 'Technopreneurship', 2, '6', '2020-08-13 08:34:02', '2020-08-13 08:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2020_08_10_032613_create_mahasiswa_tabel', 1),
(28, '2020_08_12_172938_create_mata_kuliah_table', 2),
(29, '2014_10_12_100000_create_password_resets_table', 3),
(30, '2020_08_12_095509_create_dosen_table', 3),
(31, '2020_08_12_095532_create_prodi_table', 3),
(34, '2020_08_12_174010_create_mata_kuliah_table', 4),
(39, '2020_08_12_190237_create_skripsi_table', 5),
(40, '2020_08_13_042235_create_matakuliah_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `kode_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kaprodi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`kode_prodi`, `nama_prodi`, `kaprodi`, `created_at`, `updated_at`) VALUES
(55201, 'Tehnik Informatika', 'Syefri Maulana Husein M.Kom', '2020-08-13 04:49:17', '2020-08-13 04:49:17'),
(55202, 'Tehnik Indiustri', 'H NoName ', '2020-08-13 04:49:17', '2020-08-13 04:49:17'),
(55203, 'Tehnik Mesin', 'Jokowiharjo', '2020-08-13 07:41:48', '2020-08-13 07:41:48'),
(55204, 'Tehnik Sipil', 'WahyuSardono', '2020-08-13 07:41:48', '2020-08-13 07:41:48'),
(55205, 'Tehnik Elektro', 'Bunyamin Sueb', '2020-08-13 07:41:48', '2020-08-13 07:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'fajril', 'fajrilhayat1204@gmail.com', NULL, '$2y$10$1/vzekXauCR9xMgMnJGEEOPKqc3a9PCMNOjrC5wkAvBn/D3sWFmXS', NULL, '2020-08-11 05:58:30', '2020-08-11 05:58:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`kode_prodi`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `skripsi`
--
ALTER TABLE `skripsi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
