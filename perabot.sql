-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Des 2022 pada 16.49
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perabot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_perabot`
--

CREATE TABLE `data_perabot` (
  `ID` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_perabot`
--

INSERT INTO `data_perabot` (`ID`, `nama`, `harga`, `stok`) VALUES
('123', 'Gayung', 15000, 30),
('124', 'Sapu', 30000, 20),
('125', 'Pel', 35000, 10),
('126', 'Bak', 50000, 21),
('127', 'Serbet', 5000, 100),
('128', 'Panci', 45000, 10),
('129', 'Piring Plastik', 8000, 120),
('130', 'Gelas Plastik', 5000, 150),
('131', 'Keranjang Sampah', 25000, 30),
('132', 'Rak Piring', 60000, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_perabot`
--

CREATE TABLE `info_perabot` (
  `ID` varchar(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `tgl_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `info_perabot`
--

INSERT INTO `info_perabot` (`ID`, `nama`, `deskripsi`, `tgl_upload`) VALUES
('123', 'Gayung', 'Buat mengambil air mandi', '2022-12-08'),
('124', 'Sapu', 'Buat membersihkan kotoran di lantai rumah', '2022-12-08'),
('125', 'Pel', 'Membersihkan dan mensterilkan lantai', '2022-12-08'),
('126', 'Bak', 'Wadah untuk air', '2022-12-08'),
('127', 'Serbet', 'Pegangan panci atau pembersih meja', '2022-12-08'),
('128', 'Panci', 'Alat masak khususnya merebus makanan', '2022-12-08'),
('129', 'Piring Plastik', 'Wadah/alas makan', '2022-12-08'),
('130', 'Gelas Plastik', 'Wadah/alas minum', '2022-12-08'),
('131', 'Keranjang Sampah', 'Wadah sementara pembuangan sampah', '2022-12-08'),
('132', 'Rak Piring', 'Tempat menaruh piring bersih', '2022-12-08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_perabot`
--
ALTER TABLE `data_perabot`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `info_perabot`
--
ALTER TABLE `info_perabot`
  ADD KEY `ID` (`ID`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `info_perabot`
--
ALTER TABLE `info_perabot`
  ADD CONSTRAINT `info_perabot_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `data_perabot` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
