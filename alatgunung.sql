-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jan 2021 pada 08.56
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alatgunung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'Eiger Excelcior 75L', 'bag01', 1650000.00, 'images/kerir/kerir.jpg'),
(2, 'Eiger Archeon 70L', 'Bag02', 1250000.00, 'images/kerir/kerir1.jpg'),
(3, 'Eiger Path 35L', 'Bag03', 850000.00, 'images/kerir/kerir2.jpg'),
(4, 'Eiger Wanderlust 60L', 'Bag04', 1300000.00, 'images/kerir/kerir3.jpg'),
(5, 'Eiger Hyperlite 35L', 'bag05', 900000.00, 'images/kerir/kerir4.jpg'),
(6, 'Eiger Rhinos 60L', 'bag06', 700000.00, 'images/kerir/kerir4.jpg'),
(7, 'Eiger Kapuas 45L', 'Bag07', 100000.00, 'images/kerir/kerir5.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product2`
--

CREATE TABLE `product2` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product2`
--

INSERT INTO `product2` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'Eiger CYPRESS TX SHOES', 'shoes01', 1650000.00, 'images/footwear/sepatu1.jpg'),
(2, 'Eiger PYTHON HC BOOTS', 'shoes02', 1250000.00, 'images/footwear/sepatu2.jpg'),
(3, 'Eiger PIRANHA', 'shoes03', 850000.00, 'images/footwear/sepatu3.jpg'),
(4, 'Eiger ANACONDA 2.5', 'shoes04', 1300000.00, 'images/footwear/sepatu4.jpg'),
(5, 'Eiger CAYMAN LITE', 'shoes05', 900000.00, 'images/footwear/sepatu5.jpg'),
(6, 'Eiger S.BOOT POLLOCK', 'shoes06', 700000.00, 'images/footwear/sepatu6.jpg'),
(7, 'Eiger NATOAS MID 2.5', 'shoes07', 800000.00, 'images/footwear/sepatu7.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product3`
--

CREATE TABLE `product3` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product3`
--

INSERT INTO `product3` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'Eiger GAZANIA TRAVEL PARKA', 'jk01', 599000.00, 'images/jaket/jaket1.jpg'),
(2, 'Eiger SHOOTER WINDPROOF JACKET', 'jk02', 625000.00, 'images/jaket/jaket2.jpg'),
(3, 'Eiger HIKE LIGHT X28', 'jk03', 459000.00, 'images/jaket/jaket3.jpg'),
(4, 'Eiger ECLIPSE X28', 'jk04', 725000.00, 'images/jaket/jaket4.jpg'),
(5, 'Eiger STRAIGHTLINE 2.0 JACKET', 'jk05', 650000.00, 'images/jaket/jaket5.jpg'),
(6, 'Eiger J.EG REVERSIBLE PARKA HOODY ', 'jk06', 700000.00, 'images/jaket/jaket6.jpg'),
(7, 'Eiger J.TRIPLE JACKET MENS', 'jk07', 800000.00, 'images/jaket/jaket7.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product4`
--

CREATE TABLE `product4` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` double(9,2) NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product4`
--

INSERT INTO `product4` (`id`, `name`, `code`, `price`, `image`) VALUES
(1, 'Eiger BAITOU WATCH', 'g01', 250000.00, 'images/gear/gear1.jpg'),
(2, 'Eiger TOUCAN WALLET', 'g02', 150000.00, 'images/gear/gear2.jpg'),
(3, 'Eiger SLEEP SACK 1000, RED, NOS', 'g03', 450000.00, 'images/gear/gear3.jpg'),
(4, 'Eiger LAKE SIDE SLEEPING BAG', 'g04', 325000.00, 'images/gear/gear4.jpg'),
(5, 'Eiger VALOR TREKING POLE', 'g05', 199000.00, 'images/gear/gear5.jpg'),
(6, 'Eiger SLAVE', 'g06', 129000.00, 'images/gear/gear6.jpg'),
(7, 'Eiger\r\nAPOLLO HEADLAMP', 'g07', 150000.00, 'images/gear/gear7.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` varchar(10) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email_user`, `username`, `password`) VALUES
('', 'Sulung Darmawan', 'lilsulung@gmail.com', 'lilsulung', '$2y$10$ZFf4p.bxTqBl6JgHpB77xuSvWfN3D/TpAtYZxSbHRarbROBdOGLXC');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indeks untuk tabel `product2`
--
ALTER TABLE `product2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indeks untuk tabel `product3`
--
ALTER TABLE `product3`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indeks untuk tabel `product4`
--
ALTER TABLE `product4`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `product2`
--
ALTER TABLE `product2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `product3`
--
ALTER TABLE `product3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `product4`
--
ALTER TABLE `product4`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
