-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Agu 2021 pada 19.23
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_supplier`
--

CREATE TABLE `detail_supplier` (
  `id_detail` int(12) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `instagram` char(12) NOT NULL,
  `facebook` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_supplier`
--

INSERT INTO `detail_supplier` (`id_detail`, `alamat`, `email`, `instagram`, `facebook`) VALUES
(1, 'Tangerang', 'kimiafarma@gmail.com', '@kimiafarma', 'kimia farma'),
(2, 'Bogor', 'sales@centuri.com', '@centuri', 'centuri'),
(3, 'Semarang', 'daya.sembada@yahoo.c', '@daya', 'daya sembada'),
(4, 'Bekasi', 'obat@sehat.com', '@obatsehat', 'Obat Sehat'),
(5, 'Balikpapan', 'bekapai@yahoo.com', '@bekapai', 'bekapai'),
(7, 'Surabaya', 'trimika@gmail.com', '@trimika', 'trimika'),
(8, 'Jakarta', 'Mandala@gmail.com', '@mandala', 'Mandala'),
(9, 'Daan Mogot', 'medikaloka@ymail.com', '@medikaloka', 'medikaloka'),
(10, 'Serpong', 'sales@sangnaga.com', '@sangnaga', 'Sang Naga'),
(11, 'Papua', 'primasolusi@gmail.co', '@primasolui', 'Prima Solusi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detailtr` int(12) NOT NULL,
  `id_transaksi` int(12) NOT NULL,
  `id_obat` int(12) NOT NULL,
  `total_harga` decimal(15,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detailtr`, `id_transaksi`, `id_obat`, `total_harga`) VALUES
(1, 4, 3, '50000'),
(2, 2, 4, '57000'),
(3, 5, 5, '54000'),
(4, 2, 10, '34000'),
(5, 6, 10, '53000'),
(6, 9, 6, '40000'),
(7, 8, 1, '60000'),
(8, 7, 9, '45000'),
(9, 5, 10, '58000'),
(10, 9, 9, '50000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(12) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `harga` decimal(15,0) NOT NULL,
  `stock` int(5) NOT NULL,
  `id_supplier` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama`, `jenis`, `harga`, `stock`, `id_supplier`) VALUES
(1, 'Paracetamol', 'Tablet', '30000', 2, 3),
(2, 'Ibuproten', 'Sirup', '25000', 5, 6),
(3, 'Atenolol', 'Tablet', '40000', 3, 2),
(4, 'Atropin', 'Suntik', '20000', 6, 7),
(5, 'Biotin', 'kapsul', '57000', 9, 10),
(6, 'Busulfan', 'Tablet', '16000', 8, 7),
(7, 'Entrostop', 'Tablet', '10000', 10, 5),
(8, 'estrogen', 'Suntik', '34000', 6, 4),
(9, 'Fibrinogen', 'Suntik', '50000', 8, 9),
(10, 'Gliserol', 'Sirup', '45000', 23, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_pelanggan` int(12) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_tlpn` varchar(13) NOT NULL,
  `id_obat` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`ID_pelanggan`, `nama`, `alamat`, `no_tlpn`, `id_obat`) VALUES
(1, 'Dian', 'Tangerang', '085776955836', 6),
(2, 'joko', 'Bogor', '08944556728', 8),
(3, 'Santi', 'Semarang', '081210580077', 1),
(4, 'tri', 'Bekasi', '0877632287', 4),
(5, 'Citra', 'Bekasi', '081256784321', 8),
(6, 'gola', 'Surabaya', '02159445678', 5),
(7, 'Anton', 'Balikpapan', '081210553346', 2),
(8, 'doyo', 'Jakarta', '085747662226', 3),
(9, 'jono', 'serang', '081262437555', 7),
(10, 'umi', 'Papua', '08345788897', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(12) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `id_detail` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `no_tlp`, `id_detail`) VALUES
(2, 'Kimia Farma', '085776944578', 1),
(3, 'PT Centuri', '021-5966789', 2),
(4, 'PT Daya Sembaya', '021-59786444', 3),
(5, 'PT Obat Sehat', '085776988790', 4),
(6, 'PT Bekapai', '081210345899', 5),
(7, 'PT Trimika Sejahtera', '08977694456', 7),
(8, 'PT Mandala Sejahtera', '085677894500', 8),
(9, 'PT Medikaloka Sejahtera', '082134567832', 9),
(10, 'PT Sang Naga', '08577339723', 10),
(11, 'PT Prima Solusi', '021-5966784', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(12) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `jmlh_obat` int(12) NOT NULL,
  `id_pelanggan` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tgl_transaksi`, `jmlh_obat`, `id_pelanggan`) VALUES
(1, '2021-08-03', 6, 5),
(2, '2021-08-05', 8, 1),
(3, '2021-08-01', 9, 7),
(4, '2021-08-02', 4, 8),
(5, '2021-08-01', 2, 3),
(6, '2021-08-03', 3, 3),
(7, '2021-08-05', 1, 10),
(8, '2021-08-07', 6, 4),
(9, '2021-08-04', 1, 2),
(10, '2021-08-06', 3, 6);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_supplier`
--
ALTER TABLE `detail_supplier`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detailtr`),
  ADD KEY `fk_detailtr` (`id_transaksi`),
  ADD KEY `fk_obat` (`id_obat`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `fk_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_pelanggan`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`),
  ADD KEY `fk_detail` (`id_detail`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_pelanggan` (`id_pelanggan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_supplier`
--
ALTER TABLE `detail_supplier`
  MODIFY `id_detail` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detailtr` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `ID_pelanggan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `fk_detailtr` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `fk_obat` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id_obat`);

--
-- Ketidakleluasaan untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `fk_supplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Ketidakleluasaan untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `fk_detail` FOREIGN KEY (`id_detail`) REFERENCES `detail_supplier` (`id_detail`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`ID_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
