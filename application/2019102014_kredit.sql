-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2020 pada 19.22
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2019102014_kredit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id_customer` int(11) NOT NULL,
  `nm_customer` varchar(100) NOT NULL,
  `nohp` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `nik` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_customer`
--

INSERT INTO `tbl_customer` (`id_customer`, `nm_customer`, `nohp`, `alamat`, `nik`, `gender`) VALUES
(1, 'Chotib', '089678567899', 'Kabupaten Cirebon', '32091003100', 'Laki-Laki'),
(2, 'arul ganteng', '0892113123', 'merapadakulon', '12345', 'Perempuan'),
(6, 'Alwi', '0891234578', 'Bandung', '320989898218', 'Laki-Laki'),
(7, 'Udin', '0897658988', 'Ciawi', '320912121', 'Laki-Laki'),
(8, 'Dimas', '08976544455', 'Majalengka', '32091238987', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_karyawan`
--

CREATE TABLE `tbl_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nm_karyawan` varchar(100) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `nohp` varchar(30) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_karyawan`
--

INSERT INTO `tbl_karyawan` (`id_karyawan`, `nip`, `nm_karyawan`, `gender`, `nohp`, `alamat`) VALUES
(1, '902209', 'Opik', 'Laki-Laki', '089234123789', 'Kabupaten Kuningan'),
(6, '901109', 'Irfan', 'Laki-Laki', '08976554444', 'Jakarta'),
(7, '908767', 'Ayunda', 'Perempuan', '085456789', 'Yogyakarta'),
(8, '908877', 'Oti', 'Perempuan', '085678767677', 'Papua');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kredit`
--

CREATE TABLE `tbl_kredit` (
  `id_kredit` int(11) NOT NULL,
  `nm_kredit` varchar(100) NOT NULL,
  `dp_awal` varchar(100) NOT NULL,
  `bln_angsuran` varchar(100) NOT NULL,
  `hg_motor` varchar(100) NOT NULL,
  `nm_motor` varchar(100) NOT NULL,
  `lm_angsuran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kredit`
--

INSERT INTO `tbl_kredit` (`id_kredit`, `nm_kredit`, `dp_awal`, `bln_angsuran`, `hg_motor`, `nm_motor`, `lm_angsuran`) VALUES
(11, 'Udin', '1000000', '', '20000000', 'Satria', '10'),
(12, 'arul ganteng', '1000000', '', '15000000', 'vixion', '2'),
(13, 'Alwi', '15000000', '', '13000000', 'Shogun', '10'),
(14, 'Udin', '500000', '', '13000000', 'Shogun', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_motor`
--

CREATE TABLE `tbl_motor` (
  `id_motor` int(11) NOT NULL,
  `nm_motor` varchar(100) NOT NULL,
  `jns_motor` varchar(100) NOT NULL,
  `hg_motor` varchar(100) NOT NULL,
  `merk_motor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_motor`
--

INSERT INTO `tbl_motor` (`id_motor`, `nm_motor`, `jns_motor`, `hg_motor`, `merk_motor`) VALUES
(1, 'vixion', 'sport', '15000000', 'Yamaha'),
(2, 'Satria', 'Sport', '20000000', 'Suzuki'),
(5, 'Shogun', 'Bebek', '13000000', 'Suzuki'),
(6, 'Astrea', 'Bebek', '3000000', 'Honda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `id_sup` int(11) NOT NULL,
  `nm_sup` varchar(100) NOT NULL,
  `merk_motor` varchar(100) NOT NULL,
  `jns_motor` varchar(100) NOT NULL,
  `jmlh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`id_sup`, `nm_sup`, `merk_motor`, `jns_motor`, `jmlh`) VALUES
(2, 'Chotib', 'Yamaha', 'Sport', '200'),
(5, 'Galang', 'Kawasaki', 'Sport', '12'),
(6, 'Haikal', 'Yamaha', 'Matic', '5'),
(7, 'Susan', 'Honda', 'Matic', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nm_user` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nm_user`, `status`) VALUES
(1, 'admin', '12345', 'Fahrurrozi', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `tbl_kredit`
--
ALTER TABLE `tbl_kredit`
  ADD PRIMARY KEY (`id_kredit`);

--
-- Indeks untuk tabel `tbl_motor`
--
ALTER TABLE `tbl_motor`
  ADD PRIMARY KEY (`id_motor`);

--
-- Indeks untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`id_sup`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_karyawan`
--
ALTER TABLE `tbl_karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_kredit`
--
ALTER TABLE `tbl_kredit`
  MODIFY `id_kredit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_motor`
--
ALTER TABLE `tbl_motor`
  MODIFY `id_motor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `id_sup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
