-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 09 Nis 2023, 11:04:13
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `coklukayit`
--
CREATE DATABASE IF NOT EXISTS `coklukayit` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `coklukayit`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kisiler`
--

DROP TABLE IF EXISTS `kisiler`;
CREATE TABLE IF NOT EXISTS `kisiler` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ad` varchar(100) NOT NULL,
  `soyad` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kisiler`
--

INSERT INTO `kisiler` (`id`, `ad`, `soyad`) VALUES
(1, 'Nurullah', 'Arnus'),
(2, 'Yasar', 'Terman'),
(3, 'Kadir', 'Aslan'),
(5, 'Nihat', 'Doğan'),
(6, 'Burcu', 'Yılmaz');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
