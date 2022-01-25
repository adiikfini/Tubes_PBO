-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jan 2022 pada 17.25
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
-- Database: `db_autodealer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idPegawai` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `ttlPegawai` varchar(20) NOT NULL,
  `noHpPegawai` varchar(30) NOT NULL,
  `emailPegawai` varchar(30) NOT NULL,
  `gaji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idPegawai`, `nama`, `Username`, `Password`, `ttlPegawai`, `noHpPegawai`, `emailPegawai`, `gaji`) VALUES
('PEG0001', 'Doyod', 'admin', '123', '10/02/1985', '089638631587', 'Doyodoran@auto.com', 3000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `idCustomer` varchar(10) NOT NULL,
  `namaCustomer` varchar(40) NOT NULL,
  `ttlCustomer` varchar(20) NOT NULL,
  `alamatCustomer` varchar(100) NOT NULL,
  `noHpCustomer` varchar(12) NOT NULL,
  `emailCustomer` varchar(30) NOT NULL,
  `passCustomer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`idCustomer`, `namaCustomer`, `ttlCustomer`, `alamatCustomer`, `noHpCustomer`, `emailCustomer`, `passCustomer`) VALUES
('CUS0001', 'James', 'Jakarta, 17/08/1945', 'Bandung', '08881118888', 'james@auto.com', 'james123'),
('CUS0002', 'Josh', 'Bandung, 17/08/1945', 'Jakarta', '08881117777', 'josh@auto.com', 'josh123'),
('CUS0003', 'Jordan', 'Cimahi, 11/01/1980', 'Depok', '081990171221', 'jordan@auto.com', 'jord4n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `idMobil` varchar(10) NOT NULL,
  `merekMobil` varchar(20) NOT NULL,
  `modelMobil` varchar(30) NOT NULL,
  `tahunMobil` varchar(4) NOT NULL,
  `deskripsiMobil` text NOT NULL,
  `warnaMobil` varchar(25) NOT NULL,
  `hargaMobil` int(11) NOT NULL,
  `stokMobil` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`idMobil`, `merekMobil`, `modelMobil`, `tahunMobil`, `deskripsiMobil`, `warnaMobil`, `hargaMobil`, `stokMobil`) VALUES
('MPV0000001', 'Mitsubishi ', 'Xpander Ultimate A/T', '2018', 'Xpander ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen MPV. MEntenagai Xpander Ultimate A/T adalah mesin 1499 cc yang menghasilkan 103 hp dengan torsi maksimum', 'Red Metallic', 228000000, 0),
('MPV0000002', 'Mitsubishi ', 'Xpander Ultimate A/T', '2018', 'Xpander ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen MPV. MEntenagai Xpander Ultimate A/T adalah mesin 1499 cc yang menghasilkan 103 hp dengan torsi maksimum', 'Diamond Black Metallic', 228000000, 0),
('MPV0000003', 'Mitsubishi ', 'Xpander Ultimate A/T', '2018', 'Xpander ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen MPV. MEntenagai Xpander Ultimate A/T adalah mesin 1499 cc yang menghasilkan 103 hp dengan torsi maksimum', 'Titanium Grey Metallic', 228000000, 0),
('MPV0000004', 'Daihatsu', 'Sigra 1.2 R AT DLX', '2017', 'Sigra ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen MPV. MEntenagai Sigra 1.2 R AT DLX adalah mesin 1197 cc yang menghasilkan 87 hp dengan torsi maksimum 108 ', 'Dark Grey Metallic', 152250000, 0),
('MPV0000005', 'Daihatsu', 'Sigra 1.2 R AT DLX', '2017', 'Sigra ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen MPV. MEntenagai Sigra 1.2 R AT DLX adalah mesin 1197 cc yang menghasilkan 87 hp dengan torsi maksimum 108 ', 'Nebula Blue Metallic', 152250000, 0),
('SED0000001', 'Honda', 'Civic 1.5L ES Prestige', '2017', 'Sedan terbaru dari Honda, Civic, hadir dengan 2 varian. Varian tertinggi hadir dengan mesin Petrol 1498 cc, yang mampu menghasilkan tenaga hingga 171 hp dan torsi puncak 220 Nm. Civic 1.5L ES Prestige berkapasitas 5-penupang dibekali juga dengan transmisi Variable Speed CVT. Sistem keamanannya dibekali Smart Access Card Entry & Anti Theft Device.', 'Crystal Black Pearl', 490500000, 0),
('SED0000002', 'Honda', 'Civic 1.5L ES Prestige', '2017', 'Sedan terbaru dari Honda, Civic, hadir dengan 2 varian. Varian tertinggi hadir dengan mesin Petrol 1498 cc, yang mampu menghasilkan tenaga hingga 171 hp dan torsi puncak 220 Nm. Civic 1.5L ES Prestige berkapasitas 5-penupang dibekali juga dengan transmisi Variable Speed CVT. Sistem keamanannya dibekali Smart Access Card Entry & Anti Theft Device.', 'White Orchid Pearl', 490500000, 3),
('SED0000006', 'Audi', 'A8 Luxury 3.0L TFSI Quatt', '2012', 'Sedan terbaru dari Audi, A8, hadir dengan 1 varian. Varian tertinggi hadir dengan mesin Petrol 2995 cc, yang mampu menghasilkan tenaga hingga 286 hp dan torsi puncak 420 Nm. A8 Luxury 3.0L TFSI Quattro berkapasitas 5-penupang dibekali juga dengan transmisi 8-Speed Automatic. Sistem keamanannya dibekali Anti Theft Device & Anti-Theft Alarm.', 'Moonlight Blue Metallic', 2000, 10),
('SUV0000001', 'Toyota', 'Rush G MT', '2018', 'SUV terbaru dari Toyota, Rush, hadir dengan 4 varian. Varian tertinggi hadir dengan mesin Petrol 1496 cc, yang mampu menghasilkan tenaga hingga 103 hp dan torsi puncak 136 Nm. Rush TRD Sportivo AT berkapasitas 7-penupang dibekali juga dengan transmisi 4-Speed Automatic. Sistem keamanannya dibekali Smart Access Card Entry & Central Locking.', 'Black Mica', 242149999, 0),
('SUV0000002', 'Toyota', 'Rush G MT', '2018', 'SUV terbaru dari Toyota, Rush, hadir dengan 4 varian. Varian tertinggi hadir dengan mesin Petrol 1496 cc, yang mampu menghasilkan tenaga hingga 103 hp dan torsi puncak 136 Nm. Rush TRD Sportivo AT berkapasitas 7-penupang dibekali juga dengan transmisi 4-Speed Automatic. Sistem keamanannya dibekali Smart Access Card Entry & Central Locking.', 'White', 242149999, 0),
('SUV0000003', 'Toyota', 'Rush G MT', '2018', 'SUV terbaru dari Toyota, Rush, hadir dengan 4 varian. Varian tertinggi hadir dengan mesin Petrol 1496 cc, yang mampu menghasilkan tenaga hingga 103 hp dan torsi puncak 136 Nm. Rush TRD Sportivo AT berkapasitas 7-penupang dibekali juga dengan transmisi 4-Speed Automatic. Sistem keamanannya dibekali Smart Access Card Entry & Central Locking.', 'Red Mica Metallic', 242149999, 0),
('SUV0000004', 'Toyota', 'Fortuner 2.4 VRZ 4x4 A/T ', '2016', 'Fortuner ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen SUV. MEntenagai Fortuner 2.4 VRZ 4x4 A/T adalah mesin 2393 cc yang menghasilkan 148 hp dengan torsi maksimum 401 Nm. Varian tertinggi Fortuner terbilang efisien dengan konsumsi BBM 11.6 kmpl untuk di dalam kota, dan 15.4 kmpl di jalan tol.', 'Silver Metallic', 667550000, 0),
('SUV0000005', 'Toyota', 'Fortuner 2.4 VRZ 4x4 A/T ', '2016', 'Fortuner ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen SUV. MEntenagai Fortuner 2.4 VRZ 4x4 A/T adalah mesin 2393 cc yang menghasilkan 148 hp dengan torsi maksimum 401 Nm. Varian tertinggi Fortuner terbilang efisien dengan konsumsi BBM 11.6 kmpl untuk di dalam kota, dan 15.4 kmpl di jalan tol.', 'Attitude Black', 667550000, 0),
('SUV0000006', 'Mitsubishi', 'Pajero Sport Dakar 4x4 AT', '2017', 'Pajero Sport ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen SUV. Mentenagai Pajero Sport Dakar 4x4 AT adalah mesin 2442 cc yang menghasilkan 179 hp dengan torsi maksimum 430 Nm. Varian tertinggi Pajero Sport terbilang efisien dengan konsumsi BBM 10 kmpl untuk di dalam kota, dan 12.3 kmpl di jalan tol', 'White Pearl', 660000000, 0),
('SUV0000007', 'Mitsubishi', 'Pajero Sport Dakar 4x4 AT', '2017', 'Pajero Sport ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen SUV. Mentenagai Pajero Sport Dakar 4x4 AT adalah mesin 2442 cc yang menghasilkan 179 hp dengan torsi maksimum 430 Nm. Varian tertinggi Pajero Sport terbilang efisien dengan konsumsi BBM 10 kmpl untuk di dalam kota, dan 12.3 kmpl di jalan tol', 'Black Mica', 660000000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mpv`
--

CREATE TABLE `mpv` (
  `idMPV` varchar(10) NOT NULL,
  `merekMobil` varchar(20) NOT NULL,
  `modelMobil` varchar(25) NOT NULL,
  `tahunMobil` year(4) NOT NULL,
  `deskripsiMobil` text NOT NULL,
  `warnaMobil` varchar(30) NOT NULL,
  `hargaMobil` int(11) NOT NULL,
  `stokMobil` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mpv`
--

INSERT INTO `mpv` (`idMPV`, `merekMobil`, `modelMobil`, `tahunMobil`, `deskripsiMobil`, `warnaMobil`, `hargaMobil`, `stokMobil`) VALUES
('MPV0000001', 'Mitsubishi ', 'Xpander Ultimate A/T', 2018, 'Xpander ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen MPV. MEntenagai Xpander Ultimate A/T adalah mesin 1499 cc yang menghasilkan 103 hp dengan torsi maksimum', 'Red Metallic', 228000000, 0),
('MPV0000002', 'Mitsubishi ', 'Xpander Ultimate A/T', 2018, 'Xpander ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen MPV. MEntenagai Xpander Ultimate A/T adalah mesin 1499 cc yang menghasilkan 103 hp dengan torsi maksimum', 'Diamond Black Metallic', 228000000, 0),
('MPV0000003', 'Mitsubishi ', 'Xpander Ultimate A/T', 2018, 'Xpander ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen MPV. MEntenagai Xpander Ultimate A/T adalah mesin 1499 cc yang menghasilkan 103 hp dengan torsi maksimum', 'Titanium Grey Metallic', 228000000, 0),
('MPV0000004', 'Daihatsu', 'Sigra 1.2 R AT DLX', 2017, 'Sigra ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen MPV. MEntenagai Sigra 1.2 R AT DLX adalah mesin 1197 cc yang menghasilkan 87 hp dengan torsi maksimum 108 ', 'Dark Grey Metallic', 152250000, 0),
('MPV0000005', 'Daihatsu', 'Sigra 1.2 R AT DLX', 2017, 'Sigra ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen MPV. MEntenagai Sigra 1.2 R AT DLX adalah mesin 1197 cc yang menghasilkan 87 hp dengan torsi maksimum 108 ', 'Nebula Blue Metallic', 152250000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `idPemesanan` varchar(10) NOT NULL,
  `tglPemesanan` varchar(6) NOT NULL,
  `idCustomer` varchar(10) NOT NULL,
  `idMobil` varchar(10) NOT NULL,
  `status` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`idPemesanan`, `tglPemesanan`, `idCustomer`, `idMobil`, `status`) VALUES
('P0000005', '2018', 'CUS0002', 'SED0000002', 'NC'),
('P0000006', '2018', 'CUS0002', 'SED0000001', 'NC'),
('P0000007', '2018', 'CUS0002', 'SED0000001', 'NC'),
('P0000008', '301118', 'CUS0002', 'SED0000006', 'NC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `noHp` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `komisi` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `nama`, `username`, `pass`, `ttl`, `noHp`, `email`, `komisi`) VALUES
('SLS0001', 'Jajang Sutarja', 'Jansutarja', 'j4n4rja', 'Cimahi, 07/03/1995', '089347889090', 'jajang@sales.auto.com', 500000),
('SLS0002', 'Anita Suryani', 'Anita', 'Suryani000', 'Bogor, 22/12/1996', '08229077090', 'AnitaSur@sales.auto.com', 250000),
('SLS0003', 'Susanto', 'susanti99', 'susanticantik', 'Bogor, 22/12/1996', '08229077090', 'susanti@sales.auto.com', 250000),
('SLS0004', 'Sari Simorangkir', 'sarikece', 'Saridarimedan', 'Medan, 02/02/1990', '088801020304', 'dualSS@sales.auto.com', 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sedan`
--

CREATE TABLE `sedan` (
  `idSedan` varchar(10) NOT NULL,
  `merekMobil` varchar(20) NOT NULL,
  `modelMobil` varchar(30) NOT NULL,
  `tahunMobil` varchar(4) NOT NULL,
  `deskripsiMobil` text NOT NULL,
  `warnaMobil` varchar(25) NOT NULL,
  `hargaMobil` int(11) NOT NULL,
  `stokMobil` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sedan`
--

INSERT INTO `sedan` (`idSedan`, `merekMobil`, `modelMobil`, `tahunMobil`, `deskripsiMobil`, `warnaMobil`, `hargaMobil`, `stokMobil`) VALUES
('SED0000001', 'Honda', 'Vios', '2000', 'Sedan kompak Toyota ini memang sangat populer sejak pertama kali diluncurkan pada pertengahan tahun ‘2000-an. Bahkan kembarannya sepat dipercaya menjadi armada taksi terbesar di Indonesia. soal kualitas dan daya tahan, tentu tak perlu diragukan lagi. Mesin berkapasitas 1.5 liter andalan Vios juga terbukti efisien serta memiliki performa cukup responsif di kelasnya.', 'Hitam', 200000, 1),
('SED0000002', 'Honda', 'Vios', '2001', 'Cuci body, salju, poles kaca', 'Hitam', 200000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `suv`
--

CREATE TABLE `suv` (
  `idSUV` varchar(10) NOT NULL,
  `merekMobil` varchar(20) NOT NULL,
  `modelMobil` varchar(25) NOT NULL,
  `tahunMobil` varchar(4) NOT NULL,
  `deskripsiMobil` text NOT NULL,
  `warnaMobil` varchar(30) NOT NULL,
  `hargaMobil` int(11) NOT NULL,
  `stokMobil` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `suv`
--

INSERT INTO `suv` (`idSUV`, `merekMobil`, `modelMobil`, `tahunMobil`, `deskripsiMobil`, `warnaMobil`, `hargaMobil`, `stokMobil`) VALUES
('SUV0000001', 'Toyota', 'Rush G MT', '2018', 'SUV terbaru dari Toyota, Rush, hadir dengan 4 varian. Varian tertinggi hadir dengan mesin Petrol 1496 cc, yang mampu menghasilkan tenaga hingga 103 hp dan torsi puncak 136 Nm. Rush TRD Sportivo AT berkapasitas 7-penupang dibekali juga dengan transmisi 4-Speed Automatic. Sistem keamanannya dibekali Smart Access Card Entry & Central Locking.', 'Black Mica', 242149999, 0),
('SUV0000002', 'Toyota', 'Rush G MT', '2018', 'SUV terbaru dari Toyota, Rush, hadir dengan 4 varian. Varian tertinggi hadir dengan mesin Petrol 1496 cc, yang mampu menghasilkan tenaga hingga 103 hp dan torsi puncak 136 Nm. Rush TRD Sportivo AT berkapasitas 7-penupang dibekali juga dengan transmisi 4-Speed Automatic. Sistem keamanannya dibekali Smart Access Card Entry & Central Locking.', 'White', 242149999, 0),
('SUV0000003', 'Toyota', 'Rush G MT', '2018', 'SUV terbaru dari Toyota, Rush, hadir dengan 4 varian. Varian tertinggi hadir dengan mesin Petrol 1496 cc, yang mampu menghasilkan tenaga hingga 103 hp dan torsi puncak 136 Nm. Rush TRD Sportivo AT berkapasitas 7-penupang dibekali juga dengan transmisi 4-Speed Automatic. Sistem keamanannya dibekali Smart Access Card Entry & Central Locking.', 'Red Mica Metallic', 242149999, 0),
('SUV0000004', 'Toyota', 'Fortuner 2.4 VRZ 4x4 A/T ', '2016', 'Fortuner ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen SUV. MEntenagai Fortuner 2.4 VRZ 4x4 A/T adalah mesin 2393 cc yang menghasilkan 148 hp dengan torsi maksimum 401 Nm. Varian tertinggi Fortuner terbilang efisien dengan konsumsi BBM 11.6 kmpl untuk di dalam kota, dan 15.4 kmpl di jalan tol.', 'Silver Metallic', 667550000, 0),
('SUV0000005', 'Toyota', 'Fortuner 2.4 VRZ 4x4 A/T ', '2016', 'Fortuner ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen SUV. MEntenagai Fortuner 2.4 VRZ 4x4 A/T adalah mesin 2393 cc yang menghasilkan 148 hp dengan torsi maksimum 401 Nm. Varian tertinggi Fortuner terbilang efisien dengan konsumsi BBM 11.6 kmpl untuk di dalam kota, dan 15.4 kmpl di jalan tol.', 'Attitude Black', 667550000, 0),
('SUV0000006', 'Mitsubishi', 'Pajero Sport Dakar 4x4 AT', '2017', 'Pajero Sport ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen SUV. Mentenagai Pajero Sport Dakar 4x4 AT adalah mesin 2442 cc yang menghasilkan 179 hp dengan torsi maksimum 430 Nm. Varian tertinggi Pajero Sport terbilang efisien dengan konsumsi BBM 10 kmpl untuk di dalam kota, dan 12.3 kmpl di jalan tol', 'White Pearl', 660000000, 0),
('SUV0000007', 'Mitsubishi', 'Pajero Sport Dakar 4x4 AT', '2017', 'Pajero Sport ditawarkan dengan banyak fitur di setiap varian, sehingga membuatnya kompeten di segmen SUV. Mentenagai Pajero Sport Dakar 4x4 AT adalah mesin 2442 cc yang menghasilkan 179 hp dengan torsi maksimum 430 Nm. Varian tertinggi Pajero Sport terbilang efisien dengan konsumsi BBM 10 kmpl untuk di dalam kota, dan 12.3 kmpl di jalan tol', 'Black Mica', 660000000, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idPegawai`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idCustomer`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`idMobil`);

--
-- Indeks untuk tabel `mpv`
--
ALTER TABLE `mpv`
  ADD PRIMARY KEY (`idMPV`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`idPemesanan`),
  ADD KEY `idCustomer` (`idCustomer`),
  ADD KEY `idMobil` (`idMobil`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `sedan`
--
ALTER TABLE `sedan`
  ADD PRIMARY KEY (`idSedan`);

--
-- Indeks untuk tabel `suv`
--
ALTER TABLE `suv`
  ADD PRIMARY KEY (`idSUV`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`),
  ADD CONSTRAINT `pemesanan_ibfk_3` FOREIGN KEY (`idMobil`) REFERENCES `mobil` (`idMobil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
