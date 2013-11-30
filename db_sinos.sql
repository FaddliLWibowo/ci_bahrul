-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2013 at 07:53 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_sinos`
--
CREATE DATABASE IF NOT EXISTS `db_sinos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_sinos`;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_absen`
--

CREATE TABLE IF NOT EXISTS `tabel_absen` (
  `id_absen` int(50) NOT NULL AUTO_INCREMENT,
  `nis` varchar(50) NOT NULL,
  `tgl` varchar(50) NOT NULL,
  `absen` varchar(20) NOT NULL,
  `id_tahun` int(50) NOT NULL,
  `id_kelas` int(50) NOT NULL,
  PRIMARY KEY (`id_absen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tabel_absen`
--

INSERT INTO `tabel_absen` (`id_absen`, `nis`, `tgl`, `absen`, `id_tahun`, `id_kelas`) VALUES
(1, '100402020', '16-11-2013', 'Terlambat', 1, 0),
(2, '100402020', '16-11-2013', 'Alpa', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_bulan`
--

CREATE TABLE IF NOT EXISTS `tabel_bulan` (
  `id_bulan` int(50) NOT NULL AUTO_INCREMENT,
  `nama_bulan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_bulan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tabel_bulan`
--

INSERT INTO `tabel_bulan` (`id_bulan`, `nama_bulan`) VALUES
(1, 'Januari'),
(2, 'Februari'),
(3, 'Maret'),
(4, 'April'),
(5, 'Mei'),
(6, 'Juni'),
(7, 'Juli'),
(8, 'Agustus'),
(9, 'September'),
(10, 'Oktober'),
(11, 'November'),
(12, 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_guru`
--

CREATE TABLE IF NOT EXISTS `tabel_guru` (
  `id_guru` int(50) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `alamat_lengkap` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `stts` varchar(50) NOT NULL,
  `stts_guru` int(10) NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tabel_guru`
--

INSERT INTO `tabel_guru` (`id_guru`, `nip`, `nama`, `jenis_kelamin`, `agama`, `tempat_lahir`, `tanggal_lahir`, `alamat_lengkap`, `username`, `password`, `stts`, `stts_guru`) VALUES
(20, '100402037', 'Faddli Lindra Wibowo', 'Laki-Laki', 'Islam', 'Pematang Siantar', '06-11-2013', 'Jln Viyata Yudha', 'FaddliLWibowo', '059b2c08530ec5363c8f361db0b6ecf5', 'guru', 1),
(21, '100402020', 'Dian Sastro', 'Perempuan', 'Islam', 'Pematang Siantar', '06-11-2013', 'Jln Viyata Yudha', 'Dian', 'fe2f53ae77163631616181ec8e034a59', 'guru', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_hari`
--

CREATE TABLE IF NOT EXISTS `tabel_hari` (
  `id_hari` int(10) NOT NULL AUTO_INCREMENT,
  `nama_hari` varchar(20) NOT NULL,
  PRIMARY KEY (`id_hari`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tabel_hari`
--

INSERT INTO `tabel_hari` (`id_hari`, `nama_hari`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jum''at'),
(6, 'Sabtu'),
(7, 'Minggu');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jadwal`
--

CREATE TABLE IF NOT EXISTS `tabel_jadwal` (
  `id_jadwal` int(50) NOT NULL AUTO_INCREMENT,
  `id_guru` varchar(50) NOT NULL,
  `id_mata_pelajaran` varchar(50) NOT NULL,
  `id_kelas` int(50) NOT NULL,
  `id_tahun` int(50) NOT NULL,
  `id_hari` int(50) NOT NULL,
  `id_jam` int(50) NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tabel_jadwal`
--

INSERT INTO `tabel_jadwal` (`id_jadwal`, `id_guru`, `id_mata_pelajaran`, `id_kelas`, `id_tahun`, `id_hari`, `id_jam`) VALUES
(1, '20', 'MK00002', 11, 3, 1, 1),
(2, '20', 'MK00003', 11, 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jam`
--

CREATE TABLE IF NOT EXISTS `tabel_jam` (
  `id_jam` int(50) NOT NULL AUTO_INCREMENT,
  `jam` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jam`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tabel_jam`
--

INSERT INTO `tabel_jam` (`id_jam`, `jam`) VALUES
(1, '07.00-08.00'),
(3, '08.00-09.00'),
(4, '09.00-10.00'),
(5, '10.00-11.00'),
(6, '11.00-12.00'),
(7, '12.00-13.00'),
(8, '13.00-14.00');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jenis_pembayaran`
--

CREATE TABLE IF NOT EXISTS `tabel_jenis_pembayaran` (
  `id_jenis_pembayaran` int(50) NOT NULL AUTO_INCREMENT,
  `nama_pembayaran` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jenis_pembayaran`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tabel_jenis_pembayaran`
--

INSERT INTO `tabel_jenis_pembayaran` (`id_jenis_pembayaran`, `nama_pembayaran`, `harga`) VALUES
(2, 'Uang SPP', '500000');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_jenjang`
--

CREATE TABLE IF NOT EXISTS `tabel_jenjang` (
  `id_jenjang` int(10) NOT NULL AUTO_INCREMENT,
  `nama_jenjang` varchar(15) NOT NULL,
  PRIMARY KEY (`id_jenjang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tabel_jenjang`
--

INSERT INTO `tabel_jenjang` (`id_jenjang`, `nama_jenjang`) VALUES
(2, 'MTS'),
(3, 'MAN');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kelas`
--

CREATE TABLE IF NOT EXISTS `tabel_kelas` (
  `id_kelas` int(50) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(50) NOT NULL,
  `id_jenjang` int(50) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tabel_kelas`
--

INSERT INTO `tabel_kelas` (`id_kelas`, `nama_kelas`, `id_jenjang`) VALUES
(11, 'VII', 2),
(12, 'VIII', 2),
(13, 'IX', 2),
(14, 'XI', 3),
(15, 'XI-IPA1', 3),
(16, 'XI-IPS2', 3),
(17, 'XI-IPS1', 3),
(18, 'XI-IPA2', 3),
(19, 'XII-IPA1', 3),
(20, 'XII-IPA2', 3),
(21, 'XII-IPS1', 3),
(22, 'XII-IPS2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_mata_pelajaran`
--

CREATE TABLE IF NOT EXISTS `tabel_mata_pelajaran` (
  `id_mata_pelajaran` varchar(50) NOT NULL,
  `nama_pelajaran` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mata_pelajaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_mata_pelajaran`
--

INSERT INTO `tabel_mata_pelajaran` (`id_mata_pelajaran`, `nama_pelajaran`) VALUES
('MK00002', 'Bahasa Indonesia'),
('MK00003', 'Muatan Lokal'),
('MK00004', 'Bahasa Inggris'),
('MK00005', 'Biologi'),
('MK00006', 'PKN'),
('MK00007', 'Kimia'),
('MK00009', 'Fisika'),
('MK00010', 'Agama Islam');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_nilai`
--

CREATE TABLE IF NOT EXISTS `tabel_nilai` (
  `id_nilai` int(50) NOT NULL AUTO_INCREMENT,
  `nis` varchar(50) NOT NULL,
  `id_mata_pelajaran` varchar(50) NOT NULL,
  `id_tahun` int(50) NOT NULL,
  `id_kelas` int(50) NOT NULL,
  `id_guru` int(50) NOT NULL,
  `nilai` int(50) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pembayaran`
--

CREATE TABLE IF NOT EXISTS `tabel_pembayaran` (
  `id_pembayaran` int(50) NOT NULL AUTO_INCREMENT,
  `nis` int(50) NOT NULL,
  `id_tahun` int(50) NOT NULL,
  `id_jenis_pembayaran` int(50) NOT NULL,
  `dibayar` varchar(50) NOT NULL,
  `id_bulan` int(50) NOT NULL,
  PRIMARY KEY (`id_pembayaran`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tabel_pembayaran`
--

INSERT INTO `tabel_pembayaran` (`id_pembayaran`, `nis`, `id_tahun`, `id_jenis_pembayaran`, `dibayar`, `id_bulan`) VALUES
(1, 100402020, 3, 2, '500000', 1),
(2, 100402020, 3, 2, '5000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_semester`
--

CREATE TABLE IF NOT EXISTS `tabel_semester` (
  `id_semester` int(20) NOT NULL AUTO_INCREMENT,
  `nama_status` varchar(20) NOT NULL,
  `singkat` varchar(10) NOT NULL,
  PRIMARY KEY (`id_semester`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tabel_semester`
--

INSERT INTO `tabel_semester` (`id_semester`, `nama_status`, `singkat`) VALUES
(1, '0', 'Ga'),
(2, '1', 'Ge');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_siswa`
--

CREATE TABLE IF NOT EXISTS `tabel_siswa` (
  `nis` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nama_panggilan` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `status_anak` varchar(50) NOT NULL,
  `riwayat` text NOT NULL,
  `asal` varchar(50) NOT NULL,
  `alamat_lengkap` varchar(50) NOT NULL,
  `id_kelas` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `stts` varchar(50) NOT NULL,
  `stts_siswa` int(10) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_siswa`
--

INSERT INTO `tabel_siswa` (`nis`, `nama`, `nama_panggilan`, `jenis_kelamin`, `agama`, `tempat_lahir`, `tanggal_lahir`, `status_anak`, `riwayat`, `asal`, `alamat_lengkap`, `id_kelas`, `username`, `password`, `stts`, `stts_siswa`) VALUES
('100402020', 'Dian Sastro', 'Dian', 'Perempuan', 'Islam', 'Pematang Siantar', '06-11-2013', '', 'Maag', 'SMP Negeri 2', 'Jalan Viyata Yidha', 11, '100402020', 'efb77a8d48a425151b940e31b973ec90', 'siswa', 1),
('100402037', 'Faddli Lindra Wibowo', 'Faddli', 'Laki-Laki', 'Islam', 'Pematang Siantar', '06-11-2013', '', 'Maag', 'SMP Negeri 2', 'Jln Viyata Yudha', 11, '100402037', '64209e030262d15d60f269c54c5002f9', 'siswa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tahun`
--

CREATE TABLE IF NOT EXISTS `tabel_tahun` (
  `id_tahun` int(50) NOT NULL AUTO_INCREMENT,
  `tahun` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tahun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tabel_tahun`
--

INSERT INTO `tabel_tahun` (`id_tahun`, `tahun`, `status`) VALUES
(2, '2013/20141', '0'),
(3, '2013/20142', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE IF NOT EXISTS `tabel_user` (
  `id_user_login` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `stts` varchar(30) NOT NULL,
  PRIMARY KEY (`id_user_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`id_user_login`, `username`, `password`, `nama_lengkap`, `stts`) VALUES
(1, 'admin', 'ef75d152cf5d3fc1852bf5cc9dfd080f', 'Tatausaha', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE IF NOT EXISTS `tbl_setting` (
  `id_setting` int(10) NOT NULL AUTO_INCREMENT,
  `tipe` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content_setting` text NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `tipe`, `title`, `content_setting`) VALUES
(1, 'site_title', 'Nama Situs', 'Aplikasi Perpustakaan'),
(2, 'site_footer', 'Teks Footer', 'xxxxxxxxx'),
(3, 'site_quotes', 'Quotes Situs', 'Mencerdaskan Kehidupan Bangsa'),
(4, 'site_theme', 'Nama Tampilan', 'black-inverse'),
(5, 'key_login', 'Key Hash Login', 'AppPerpustakaan'),
(6, 'site_limit_small', 'Limit Data Kecil', '5'),
(7, 'site_limit_medium', 'Limit Data Medium', '12'),
(8, 'site_welcome', 'Kata Sambutan', 'Salam sejahtera bagi kita semua,\r\n\r\nEra globalisasi yang penuh dengan tantangan menuntut kita untuk selalu berupaya meningkatkan mutu pelayanan kesehatan termasuk didalamnya menyiapakan sumberdaya manusia serta dukungan sarana prasarana yang memadai. Dengan demikian pemantauan & pemeliharaan derajat kesehatan masyarakat akan optimal.'),
(9, 'key_direktur', 'Nama Direktur', 'Gede Lumbung'),
(10, 'key_address', 'Alamat Rumah Sakit', 'Jln. Dewi Madri Gg. V/7');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
