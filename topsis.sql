-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jul 2019 pada 14.48
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_alternatif`
--

CREATE TABLE `tab_alternatif` (
  `id_alternatif` varchar(10) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tab_alternatif`
--

INSERT INTO `tab_alternatif` (`id_alternatif`, `nama_alternatif`) VALUES
('1', 'JNE '),
('2', 'Pos Indonesia '),
('3', 'JET Express'),
('4', 'J&T Express'),
('5', 'TIKI'),
('6', 'Sicepat Express');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_kriteria`
--

CREATE TABLE `tab_kriteria` (
  `id_kriteria` varchar(10) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tab_kriteria`
--

INSERT INTO `tab_kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`) VALUES
('1', 'Jenis Armada', 2),
('2', 'Jangkauan', 5),
('3', 'Pengalaman Perusahaan', 3),
('4', 'Harga', 5),
('5', 'Estimasi Waktu', 4),
('6', 'Hasil Packing ', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tab_topsis`
--

CREATE TABLE `tab_topsis` (
  `id_alternatif` varchar(10) NOT NULL,
  `id_kriteria` varchar(10) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tab_topsis`
--

INSERT INTO `tab_topsis` (`id_alternatif`, `id_kriteria`, `nilai`) VALUES
('1', '1', 3),
('1', '2', 3),
('1', '3', 3),
('1', '4', 4),
('1', '5', 3),
('1', '6', 3),
('2', '1', 5),
('2', '2', 5),
('2', '3', 5),
('2', '4', 3),
('2', '5', 5),
('2', '6', 4),
('3', '1', 3),
('3', '2', 2),
('3', '3', 2),
('3', '4', 4),
('3', '5', 3),
('3', '6', 2),
('4', '1', 3),
('4', '2', 2),
('4', '3', 3),
('4', '4', 3),
('4', '5', 4),
('4', '6', 3),
('5', '1', 3),
('5', '2', 4),
('5', '3', 4),
('5', '4', 4),
('5', '5', 3),
('5', '6', 4),
('6', '1', 2),
('6', '2', 3),
('6', '3', 2),
('6', '4', 3),
('6', '5', 3),
('6', '6', 2),
('Nama Alter', 'Nama Krite', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tab_alternatif`
--
ALTER TABLE `tab_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `tab_kriteria`
--
ALTER TABLE `tab_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `tab_topsis`
--
ALTER TABLE `tab_topsis`
  ADD PRIMARY KEY (`id_alternatif`,`id_kriteria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
