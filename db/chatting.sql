-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 25. Januari 2016 jam 20:34
-- Versi Server: 5.1.41
-- Versi PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chatting`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `chatters`
--

CREATE TABLE IF NOT EXISTS `chatters` (
  `name` text NOT NULL,
  `seen` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chatters`
--

INSERT INTO `chatters` (`name`, `seen`) VALUES
('dimn', '2016-01-25 20:33:43'),
('damn', '2016-01-25 20:26:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `name` text NOT NULL,
  `msg` text NOT NULL,
  `posted` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`name`, `msg`, `posted`) VALUES
('akbar', 'test', '2016-01-25 20:28:07'),
('akbar', 'Test', '2016-01-25 20:28:06'),
('Akbarnss.Blogspot.Com', 'Test 123', '2016-01-25 20:27:46'),
('AkbarNSS', 'Hello World', '2016-01-25 20:25:17'),
('Akuwa', 'tos', '2016-01-25 20:24:05'),
('Akuwa', 'test', '2016-01-25 20:21:28');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
